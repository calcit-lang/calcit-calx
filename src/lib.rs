use cirru_edn::Edn;
use cirru_parser::Cirru;
use std::collections::HashMap;

use calx_vm::{parse_function, Calx, CalxError, CalxFunc, CalxImportsDict, CalxVM};

#[no_mangle]
pub fn abi_version() -> String {
  String::from("0.0.6")
}

#[no_mangle]
pub fn run_vm(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 1 {
    if let Edn::Quote(Cirru::List(xs)) = &args[0] {
      let mut fns: Vec<CalxFunc> = vec![];

      for x in xs {
        if let Cirru::List(ys) = x {
          println!("parse fn: {:?}", ys);
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

      match vm.run() {
        Ok(()) => {}
        Err(e) => {
          println!("VM state: {:?}", vm.stack);
          println!("{}", e);
        }
      }

      Ok(Edn::Nil)
    } else {
      Err(format!("run-vm expected code, got {:?}", args))
    }
  } else {
    Err(format!("run-vm expected 1 arg, got {:?}", args))
  }
}

fn log_calx_value(xs: Vec<Calx>) -> Result<Calx, CalxError> {
  println!("log: {:?}", xs);
  Ok(Calx::Nil)
}
