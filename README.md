## Calcit Calx

> Calcit binding for [Calx VM](https://github.com/calcit-lang/calx-vm).

```cirru
ns app.main
  :require
    calx-vm :refer $ run-vm

run-vm $ quote $
  fn main () (const |demo) (echo)
```

### Usages

Install to `~/.config/calcit/modules/`, compile and provide `*.{dylib,so}` file with `./build.sh`.

The native module uses Calcit's C-safe buffer protocol v1. Cirru EDN is
serialized across the dynamic-library boundary; Rust `Vec`, `Result`, `String`,
and trait-object layouts are not part of the ABI.

### Workflow

https://github.com/calcit-lang/dylib-workflow

### License

MIT
