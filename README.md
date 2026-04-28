# glab-abbr

Fish shell abbreviations for the [GitLab CLI](https://gitlab.com/gitlab-org/cli), providing efficient shortcuts for common `glab` commands.

## Features

- **76 abbreviations** covering CI/CD, merge requests, issues, releases, variables, repos, auth, and schedules
- **Intuitive naming**: `glc` (ci), `glm` (mr), `gli` (issue), `glr` (release), `glv` (variable), `glp` (repo/project), `gla` (auth), `gls` (schedule)
- **Helper function** for automated MR creation with worktree support
- **Zero configuration** - works immediately after installation

## Installation

### Using [Fisher](https://github.com/jorgebucaran/fisher)

```bash
fisher install DanielChicot/glab-abbr
```

### Manual Installation

```bash
git clone https://github.com/DanielChicot/glab-abbr.git ~/.config/fish/plugins/glab-abbr
```

## Requirements

- [Fish shell](https://fishshell.com/) 3.0+
- [glab](https://gitlab.com/gitlab-org/cli) 1.77.0+

## Quick Start

```fish
# Check pipeline status
glcs

# View job logs in real-time
glct

# Create merge request
glmc

# List variables
glvl

# Validate CI configuration
glcL
```

## Abbreviations Reference

### General

| Abbreviation | Command | Description |
|--------------|---------|-------------|
| `gl` | `glab` | Base GitLab CLI |

### CI/CD Commands (20)

| Abbreviation | Command | Description |
|--------------|---------|-------------|
| `glc` | `glab ci` | Base CI command |
| `glca` | `glab ci artifact` | Download CI artifacts |
| `glcc` | `glab ci cancel` | Cancel pipeline/job |
| `glccj` | `glab ci cancel job` | Cancel job |
| `glccp` | `glab ci cancel pipeline` | Cancel pipeline |
| `glcd` | `glab ci delete` | Delete pipeline |
| `glcf` | `glab ci config` | Render/inspect CI config |
| `glcl` | `glab ci list` | List pipelines |
| `glcL` | `glab ci lint` | Validate .gitlab-ci.yml |
| `glcr` | `glab ci run` | Run pipeline |
| `glcrm` | `glab ci run -b main` | Run on main branch |
| `glcR` | `glab ci retry` | Retry job |
| `glcRp` | `glab ci retry -p` | Retry pipeline |
| `glcs` | `glab ci status` | Pipeline status |
| `glcsl` | `glab ci status --live` | Live pipeline status |
| `glct` | `glab ci trace` | Trace job logs |
| `glctp` | `glab ci trace -p` | Trace pipeline |
| `glcT` | `glab ci trigger` | Trigger manual job |
| `glcTp` | `glab ci trigger -p` | Trigger pipeline job |
| `glcv` | `glab ci view` | View pipeline |

### Merge Request Commands (19)

| Abbreviation | Command | Description |
|--------------|---------|-------------|
| `glm` | `glab mr` | Base MR command |
| `glma` | `glab mr approve` | Approve MR |
| `glmA` | `glab mr revoke` | Revoke approval |
| `glmc` | `glab mr create` | Create MR |
| `glmC` | `glab mr close` | Close MR |
| `glmco` | `glab mr checkout` | Check out MR locally |
| `glmd` | `glab mr diff` | View MR diff |
| `glml` | `glab mr list` | List MRs |
| `glmm` | `glab mr merge` | Merge MR |
| `glmmdsy` | `glab mr merge -dsy` | Merge (delete+squash+yes) |
| `glmn` | `glab mr note` | Add note/comment |
| `glmr` | `glab mr rebase` | Rebase MR |
| `glmR` | `glab mr reopen` | Reopen MR |
| `glms` | `glab mr subscribe` | Subscribe to MR |
| `glmt` | `glab mr todo` | Add todo for MR |
| `glmu` | `glab mr update` | Update MR |
| `glmur` | `glab mr update --ready` | Mark ready |
| `glmut` | `glab mr update --title` | Update title |
| `glmv` | `glab mr view` | View MR |

### Issue Commands (6)

| Abbreviation | Command | Description |
|--------------|---------|-------------|
| `gli` | `glab issue` | Base issue command |
| `glic` | `glab issue create` | Create issue |
| `gliC` | `glab issue close` | Close issue |
| `glil` | `glab issue list` | List issues |
| `gliu` | `glab issue update` | Update issue |
| `gliv` | `glab issue view` | View issue |

### Auth Commands (4)

| Abbreviation | Command | Description |
|--------------|---------|-------------|
| `gla` | `glab auth` | Base auth command |
| `glal` | `glab auth login` | Authenticate to GitLab |
| `glaL` | `glab auth logout` | Sign out |
| `glas` | `glab auth status` | Show auth status |

### Repo Commands (4)

Note: GitLab calls repos "projects" internally — the `glp` prefix matches that, and avoids clashing with `glr` (release).

| Abbreviation | Command | Description |
|--------------|---------|-------------|
| `glp` | `glab repo` | Base repo command |
| `glpc` | `glab repo clone` | Clone a repo |
| `glpf` | `glab repo fork` | Fork a repo |
| `glpv` | `glab repo view` | View repo details |

### Schedule Commands (5)

| Abbreviation | Command | Description |
|--------------|---------|-------------|
| `gls` | `glab schedule` | Base schedule command |
| `glsc` | `glab schedule create` | Create pipeline schedule |
| `glsl` | `glab schedule list` | List schedules |
| `glsr` | `glab schedule run` | Run scheduled pipeline now |
| `glsv` | `glab schedule view` | View schedule |

### Release Commands (7)

| Abbreviation | Command | Description |
|--------------|---------|-------------|
| `glr` | `glab release` | Base release command |
| `glrc` | `glab release create` | Create release |
| `glrd` | `glab release delete` | Delete release |
| `glrdw` | `glab release download` | Download artifacts |
| `glrl` | `glab release list` | List releases |
| `glru` | `glab release upload` | Upload artifacts |
| `glrv` | `glab release view` | View release |

### Variable Commands (10)

| Abbreviation | Command | Description |
|--------------|---------|-------------|
| `glv` | `glab variable` | Base variable command |
| `glvd` | `glab variable delete` | Delete variable |
| `glvds` | `glab variable delete --scope` | Delete (scoped) |
| `glvg` | `glab variable get` | Get variable |
| `glvgs` | `glab variable get --scope` | Get (scoped) |
| `glvl` | `glab variable list` | List variables |
| `glvs` | `glab variable set` | Set variable |
| `glvss` | `glab variable set --scope` | Set (scoped) |
| `glvu` | `glab variable update` | Update variable |
| `glvus` | `glab variable update --scope` | Update (scoped) |

## Helper Functions

### gitlab_create_merge_request

Create a draft MR with standardized settings and optional worktree setup.

**Usage:**
```fish
gitlab_create_merge_request [-w] TICKET DESCRIPTION
```

**Options:**
- `-w, --worktree` - Create git worktree after MR creation

**Default Settings:**
- Draft MR assigned to Daniel.Chicot
- Source branch created from ticket name
- Squash before merge enabled
- Remove source branch after merge
- Title format: `{TICKET}: {DESCRIPTION}`

**Examples:**
```fish
# Basic MR creation
gitlab_create_merge_request GB-123 "Fix authentication bug"

# With dedicated worktree for parallel development
gitlab_create_merge_request -w FEAT-456 "Add export feature"
cd ./worktrees/FEAT-456/glab-abbr/
```

## Common Workflows

### CI/CD Monitoring
```fish
# Check pipeline status
glcs

# Tail logs for specific job
glct 12345

# Cancel problematic pipeline
glccp

# Retry failed job
glcR 12345
```

### Merge Request Flow
```fish
# Create MR (interactive)
glmc

# View details
glmv

# Mark ready for review
glmur

# Merge when approved
glmm
```

### Variable Management
```fish
# List all variables
glvl

# Set new variable
glvs API_KEY "secret_value"

# Update with scope
glvus API_KEY "new_value" --scope production

# Get scoped variable
glvgs API_KEY --scope staging
```

### Release Management
```fish
# Create release
glrc v1.0.0

# Upload artifacts
glru v1.0.0 ./dist/*

# View release details
glrv v1.0.0

# Download assets
glrdw v1.0.0
```

## Naming Convention

Abbreviations follow a consistent pattern:

```
gl + [category] + [action] + [options]
```

**Examples:**
- `glc` = **gl**ab **c**i
- `glmc` = **gl**ab **m**r **c**reate
- `glctp` = **gl**ab **c**i **t**race **-p**
- `glmmdsy` = **gl**ab **m**r **m**erge **-d**sy

**Case conventions:**
- Lowercase: Primary actions (`glmc`, `glcr`)
- Uppercase: Alternative actions (`glmC` = close, `glcL` = lint)
- Suffixes: Options and flags (`glcrm` = run on main)

## Tips

1. **Completion**: Fish provides automatic completion for all abbreviations
2. **Expansion**: Use `abbr --show <abbr>` to see the full command
3. **History**: Abbreviations expand in shell history for clarity
4. **Composition**: Combine naturally with pipes and other commands

```fish
# Filter pipeline status
glcs | grep -i failed

# Count open MRs
glml --state opened | wc -l

# Search variables
glvl | grep -i secret
```

## License

MIT

## Related Projects

- [glab](https://gitlab.com/gitlab-org/cli) - GitLab CLI tool
- [Fish shell](https://fishshell.com/) - User-friendly command line shell
- [Fisher](https://github.com/jorgebucaran/fisher) - Fish plugin manager
