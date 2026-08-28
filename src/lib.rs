use cirru_edn::{Edn, EdnListView};
use cirru_parser::Cirru;
use cirru_parser_01::Cirru as CalxCirru;
use std::{collections::HashMap, vec};

use calx_vm::{log_calx_value, parse_function, Calx, CalxFunc, CalxImportsDict, CalxVM};

calcit_native_ffi::export_buffer_abi_v1!();

fn run_vm(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 2 {
    if let Edn::Quote(Cirru::List(xs)) = &args[0] {
      let mut fns: Vec<CalxFunc> = vec![];

      for x in xs {
        if let Cirru::List(ys) = x {
          // println!("parse fn: {:?}", ys);
          let calx_nodes: Vec<CalxCirru> = ys.iter().map(to_calx_cirru).collect();
          let f = parse_function(&calx_nodes)?;
          fns.push(f);
        } else {
          return Err("run-vm expected top-level expressions".to_owned());
        }
      }
      let mut imports: CalxImportsDict = HashMap::new();
      imports.insert("log".into(), (log_calx_value, 1));
      imports.insert("log2".into(), (log_calx_value, 2));
      imports.insert("log3".into(), (log_calx_value, 3));

      let mut vm = CalxVM::new(fns, vec![], imports);
      vm.preprocess(false)?;
      vm.setup_top_frame()?;

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
          eprintln!("VM state: {:?}", vm.stack);
          eprintln!("{}", e);
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

fn to_calx_cirru(node: &Cirru) -> CalxCirru {
  match node {
    Cirru::Leaf(value) => CalxCirru::Leaf(value.clone()),
    Cirru::List(xs) => CalxCirru::List(xs.iter().map(to_calx_cirru).collect()),
  }
}

calcit_native_ffi::export_edn_buffer_method_v1!(run_vm_calcit_ffi_v1, run_vm);

fn calx_to_edn(x: Calx) -> Result<Edn, String> {
  match x {
    Calx::Bool(b) => Ok(Edn::Bool(b)),
    Calx::F64(f) => Ok(Edn::Number(f)),
    Calx::I64(i) => Ok(Edn::Number(i as f64)),
    Calx::Nil => Ok(Edn::Nil),
    Calx::Str(s) => Ok(Edn::str(s.to_string())),
    Calx::List(xs) => {
      let mut ys = vec![];
      for xi in xs {
        ys.push(calx_to_edn(xi)?);
      }
      Ok(Edn::List(EdnListView(ys)))
    }
  }
}

fn edn_to_calx(x: Edn) -> Result<Calx, String> {
  match x {
    Edn::Bool(b) => Ok(Calx::Bool(b)),
    Edn::Number(f) => Ok(Calx::F64(f)),
    Edn::Nil => Ok(Calx::Nil),
    Edn::Str(s) => Ok(Calx::Str(s.to_string().into())),
    Edn::List(EdnListView(xs)) => {
      let mut ys = vec![];
      for xi in xs {
        ys.push(edn_to_calx(xi)?);
      }
      Ok(Calx::List(ys))
    }
    _ => Err(format!("expected calx, got {:?}", x)),
  }
}
