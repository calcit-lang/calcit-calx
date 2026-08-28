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

Buffer-v1 descriptors, buffer ownership, Cirru EDN transport, and adapters
come from shared
[`calcit_native_ffi`](https://github.com/calcit-lang/calcit-native-ffi). The
module requires Calcit 0.13.57.

Buffer-v1 descriptor、buffer ownership、Cirru EDN transport 与 adapter 由共享
`calcit_native_ffi` 维护；本模块要求 Calcit 0.13.57，不再复制协议模板。

`cirru_edn 0.8` uses `cirru_parser 0.2`, while the public parser API in
`calx_vm 0.2.1` still uses `cirru_parser 0.1`. The binding performs one
structure-preserving owned AST conversion at the quote entry point; this
nominal-version bridge never crosses the dylib boundary.

`cirru_edn 0.8` 使用 `cirru_parser 0.2`，而 `calx_vm 0.2.1` 的公开 parser
API 仍使用 `cirru_parser 0.1`。绑定只在 quote 入口进行一次结构等价的 owned
AST 转换；该 nominal-version bridge 不会跨越 dylib 边界。

### Workflow

https://github.com/calcit-lang/dylib-workflow

### License

MIT
