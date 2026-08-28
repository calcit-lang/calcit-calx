# 使用共享 native FFI crate / Adopt the shared native FFI crate

## 中文

- 升级到 `cirru_edn 0.8`，使用 `calcit_native_ffi 0.1.0` 替代本地 buffer-v1 模板。
- 升级到已修复 crates.io 编译兼容性的 `calx_vm 0.2.1`，并在 quote 入口显式转换 parser 0.2/0.1 的 nominal AST 类型。
- 适配 0.2.1 的 Rc string、borrowed import callback、公开 error path 与 preprocess verbose 参数。
- 按 0.2.1 的拆分生命周期在 preprocess 后显式初始化 top frame，并让有返回值的 Calx demo 显式执行 `return`。
- 复用 calx_vm 导出的 import logger，避免消费者命名其私有 CalxError 类型。
- 添加 deps.cirru，并将 CI 与模块要求同步到 Calcit 0.13.57。
- CI 增加 fmt、Rust cache 和 C-safe symbol allowlist，并保留真实 dylib smoke。
- 补充中英双语维护与责任边界文档。

## English

- Upgrade to `cirru_edn 0.8` and replace the local buffer-v1 template with `calcit_native_ffi 0.1.0`.
- Upgrade to `calx_vm 0.2.1`, which fixes crates.io build compatibility, and explicitly bridge the nominal parser 0.2/0.1 AST types at the quote entry point.
- Adapt the 0.2.1 Rc strings, borrowed import callback, public error path, and preprocess verbosity argument.
- Follow the split 0.2.1 lifecycle by initializing the top frame after preprocessing, and make the value-returning Calx demo execute `return` explicitly.
- Reuse calx_vm's exported import logger so the consumer does not need to name its private CalxError type.
- Add `deps.cirru` and align CI/module requirements to Calcit 0.13.57.
- Add formatting, Rust caching, and a C-safe symbol allowlist to CI while retaining the real dylib smoke.
- Add bilingual maintenance and responsibility-boundary documentation.
