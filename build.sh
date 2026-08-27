
#!/usr/bin/env bash

set -euo pipefail

cargo build --release
mkdir -p dylibs

case "$(uname -s)" in
  Darwin) dylib_ext=dylib ;;
  Linux) dylib_ext=so ;;
  *) echo "unsupported platform: $(uname -s)" >&2; exit 1 ;;
esac

cp "target/release/libcalcit_calx.${dylib_ext}" dylibs/
