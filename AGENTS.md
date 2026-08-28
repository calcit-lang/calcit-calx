# 维护指南 / Maintainer guide

## 中文

- 修改 calcit.cirru 前先运行 `calcit docs agents --full`，并使用 `calcit edit` / `calcit tree`。
- C-safe buffer ABI 与 Cirru EDN transport 来自 `calcit_native_ffi`；本仓库只维护 Calx VM 转换和业务逻辑。
- 提交前运行 Rust fmt/test/strict clippy、`caps --strict --ci`、Calcit check，并执行真实 release dylib 回归。

## English

- Run `calcit docs agents --full` before editing `calcit.cirru`, then use `calcit edit` / `calcit tree`.
- `calcit_native_ffi` owns the C-safe buffer ABI and Cirru EDN transport; this repository owns Calx VM conversion and domain behavior.
- Before committing, run Rust fmt/tests/strict clippy, `caps --strict --ci`, the Calcit check, and a real release-dylib regression.
