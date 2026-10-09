# CLAUDE.md

Project rules: @AGENTS.md (upstream-owned, do not edit on `main`).

## Fork workflow (dcnet-workflow)

- Develop on `main` only. `master` mirrors `upstream/master`; never commit there. Sync: `knowledge/runbooks/upstream-sync.md`.
- Start of session: read `feature_list.json`, `progress.md`, `session-handoff.md` (if present), `knowledge/index.md`; run `./init.sh`; `git log --oneline -5`.
- One feature `in-progress` at a time. Stay in scope of that feature.
- Specs -> `docs/specs/YYYY-MM-DD-<topic>-design.md`; plans -> `docs/plans/YYYY-MM-DD-<feature>.md`.
- Definition of Done: behavior implemented, verified this session (`FULL=1 ./init.sh` before PR), evidence in `feature_list.json`, `./init.sh` still green, lockfile + `.nvmrc` intact.
- End of session: update `progress.md`, `feature_list.json` status/evidence, `session-handoff.md` for large work, Knowledge Flush into `knowledge/` (or "no new knowledge" in `knowledge/log.md`), commit.
