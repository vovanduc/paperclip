---
type: runbook
title: Sync upstream into main
---
# Sync upstream into main

`master` tracks `upstream/master` (paperclipai/paperclip); `main` tracks `origin/main` (vovanduc/paperclip).

```sh
git switch master && git pull --ff-only          # fast-forward from upstream
git push origin master                            # optional: mirror to fork
git switch main && git merge master               # bring new upstream features in
./init.sh                                         # reinstall + typecheck
```

Keep fork-only changes in files upstream does not own (CLAUDE.md, harness files, docs/specs, docs/plans, knowledge/) to avoid conflicts. See [[node-version]].
