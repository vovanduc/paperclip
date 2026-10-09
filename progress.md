# Session Progress Log

## Current State

**Last Updated:** 2026-10-09
**Active Feature:** none (feat-001 done)

## Branch model

- `main` — private development, tracks `origin/main` (github.com/vovanduc/paperclip). All work lands here.
- `master` — pristine mirror of upstream, tracks `upstream/master` (github.com/paperclipai/paperclip). Never commit to it.
- Pull upstream: see `knowledge/runbooks/upstream-sync.md`.

## Status

### What's Done

- [x] feat-001: `main` branch created + pushed; `master` re-tracked to `upstream/master`
- [x] dcnet-workflow harness bootstrapped (feature_list.json, progress.md, init.sh, session-handoff.md, docs/specs, docs/plans, knowledge/)
- [x] `./init.sh` green on Node v24.21.0; `pnpm dev` runs on http://localhost:3100

### What's Next

1. Pick first real feature: brainstorm -> docs/specs/, plan -> docs/plans/, add entry to feature_list.json.

## Blockers / Risks

- [ ] Plan location conflict: upstream AGENTS.md says `doc/plans/`; dcnet-workflow uses `docs/specs/` + `docs/plans/`. Private work follows dcnet-workflow.
- [ ] Editing upstream-owned files (AGENTS.md, etc.) on `main` creates merge conflicts on upstream sync. Harness pointers live in CLAUDE.md (absent upstream) instead.

## Decisions Made

- **Harness pointer in CLAUDE.md, not AGENTS.md**: keeps upstream merges conflict-free.
- **init.sh = install + typecheck; `FULL=1` adds test:run + build**: full suite too slow for every session.
