use cirru_edn::Edn;
use cirru_parser::Cirru;
use std::{collections::HashMap, vec};

use calx_vm::{parse_function, Calx, CalxError, CalxFunc, CalxImportsDict, CalxVM};

#[no_mangle]
pub fn abi_version() -> String {
  String::from("0.0.6")
}

#[no_mangle]
pub fn run_vm(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 2 {
    if let Edn::Quote(Cirru::List(xs)) = &args[0] {
      let mut fns: Vec<CalxFunc> = vec![];

      for x in xs {
        if let Cirru::List(ys) = x {
          // println!("parse fn: {:?}", ys);
          let f = parse_function(ys)?;
          fns.push(f);
        } else {
          panic!("expected top level expressions");
        }
      }
      let mut imports: CalxImportsDict = HashMap::new();
      imports.insert(String::from("log"), (log_calx_value, 1));
      imports.insert(String::from("log2"), (log_calx_value, 2));
      imports.insert(String::from("log3"), (log_calx_value, 3));

      let mut vm = CalxVM::new(fns, vec![], imports);
      vm.preprocess()?;

      let params = if let Edn::List(params) = &args[1] {
        let mut ys = vec![];
        for p in params {
          ys.push(edn_to_calx(p.to_owned())?);
        }
        ys
      } else {
        return Err(String::from("expected list"));
      };

      match vm.run(params) {
        Ok(value) => Ok(calx_to_edn(value)?),
        Err(e) => {
          println!("VM state: {:?}", vm.stack);
          println!("{}", e);
          Err(format!("failed running: {}", e))
        }
      }
    } else {
      Err(format!("run-vm expected code, got {:?}", args))
    }
  } else {
    Err(format!("run-vm expected 2 arg, got {:?}", args))
  }
}

fn log_calx_value(xs: Vec<Calx>) -> Result<Calx, CalxError> {
  println!("log: {:?}", xs);
  Ok(Calx::Nil)
}

fn calx_to_edn(x: Calx) -> Result<Edn, String> {
  match x {
    Calx::Bool(b) => Ok(Edn::Bool(b)),
    Calx::F64(f) => Ok(Edn::Number(f)),
    Calx::I64(i) => Ok(Edn::Number(i as f64)),
    Calx::Nil => Ok(Edn::Nil),
    Calx::Str(s) => Ok(Edn::str(s)),
    Calx::List(xs) => {
      let mut ys = vec![];
      for xi in xs {
        ys.push(calx_to_edn(xi)?);
      }
      Ok(Edn::List(ys))
    }
  }
}

fn edn_to_calx(x: Edn) -> Result<Calx, String> {
  match x {
    Edn::Bool(b) => Ok(Calx::Bool(b)),
    Edn::Number(f) => Ok(Calx::F64(f)),
    Edn::Nil => Ok(Calx::Nil),
    Edn::Str(s) => Ok(Calx::Str(s.into())),
    Edn::List(xs) => {
      let mut ys = vec![];
      for xi in xs {
        ys.push(edn_to_calx(xi)?);
      }
      Ok(Calx::List(ys))
    }
    _ => Err(format!("expected calx, got {:?}", x)),
  }
}
