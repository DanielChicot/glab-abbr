# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

Fish shell plugin providing abbreviations for the GitLab CLI (`glab`). Distributed via Fisher. Two source files do all the work — there is no build, test, or lint pipeline.

## Layout

```
conf.d/glab-abbr.fish                    # all abbr -a definitions, sourced at shell startup
functions/gitlab_create_merge_request.fish  # autoloaded helper (filename must equal function name)
```

Fisher convention: `conf.d/*.fish` is sourced once when fish starts; `functions/*.fish` is autoloaded on first call. Adding a new helper means creating `functions/<name>.fish` containing `function <name>`.

## Reloading after edits

Editing `conf.d/glab-abbr.fish` does not affect already-running shells. After changes:

```fish
source conf.d/glab-abbr.fish    # current shell only
```

New shells pick up changes automatically. For autoloaded functions, fish re-reads the file on next invocation — no reload needed.

## Naming convention (the design language)

All abbreviations follow `gl + [category] + [action] + [options]`:

- `c` → ci, `m` → mr, `r` → release, `v` → variable
- Lowercase suffix = primary action (`glmc` = mr create, `glcr` = ci run)
- Uppercase suffix = alternative action in same category (`glmC` = mr close, `glcL` = ci lint, `glcR` = ci retry)
- Trailing letters encode flags: `glcrm` = `glab ci run -b main`, `glmmdsy` = `glab mr merge -dsy`, `glcRp` = `glab ci retry -p`

When adding an abbreviation, pick the letters so the expansion is predictable from the rule above. Update the README table in the same change — it is the user-facing reference and must stay in sync.

## Helper function conventions

`gitlab_create_merge_request` (in `functions/`) encodes the author's MR defaults: draft, assigned to `Daniel.Chicot`, squash-before-merge, remove-source-branch, target = `(git_main_branch)`. `git_main_branch` is an external fish function (provided by oh-my-fish / fish git plugins) — do not redefine it here.

With `-w`, the function creates a worktree at `../../<ticket>/(basename (pwd))` — i.e. **two directories above the repo**, grouped by ticket. Preserve that path shape if extending worktree behaviour; downstream `cd` commands in the README depend on it.

## Constraints

- Target: fish 3.0+, glab 1.77.0+ (per README). Don't use syntax newer than fish 3.0.
- No co-author trailers in commits or MR descriptions.
- `claudedocs/` is gitignored — safe to use for working notes.
