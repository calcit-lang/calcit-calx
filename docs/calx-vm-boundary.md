---
title: "Calx VM execution boundary"
summary: "Run quoted Calx programs through a typed native boundary while converting supported EDN values explicitly"
scope: "module"
kind: "guide"
category: "runtime"
aliases:
  - "calcit calx"
  - "Calx VM"
  - "run-vm"
  - "quoted VM program"
  - "EDN value conversion"
  - "execute Calx"
  - "执行 Calx 虚拟机"
entry_for:
  - "calx.core/run-vm"
---

# Calx VM execution boundary

`calx.core/run-vm` accepts a top-level quoted list of Calx function forms and a Calcit list of arguments. It constructs a fresh VM, installs the small `log`/`log2`/`log3` import set, preprocesses the program, and runs the top frame synchronously.

```cirru.no-check
calx.core/run-vm
  quote $
    fn main () (const |demo) (echo)
  []
```

The input quote is converted once between the two nominal `cirru_parser` versions inside the native adapter. Supported argument and result values are Bool, Number, nil, String, and nested Lists. Function handles, host objects, maps, sets, tags, and arbitrary opaque values do not cross this boundary.

Execution failures raise from the native boundary. Do not place `run-vm` inside a serial updater, render path, or WebSocket callback: parsing, preprocessing, and interpretation are synchronous. Treat the quoted program as code, not data; execute only application-owned or separately sandboxed programs until the VM API gains explicit resource and cancellation controls.
