---
type: gotcha
title: Node >=24.11 required
---
# Node >=24.11 required

`package.json` engines needs Node >=24.11; `.nvmrc` = 24. Machine default nvm Node is v22 — every shell must `nvm use` first. `init.sh` does it automatically. Server typecheck also builds a Rust crate (`crates/runner-core`), first run ~2.5 min.
