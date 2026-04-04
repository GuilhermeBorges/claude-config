# Claude Code — Global Config

Personal Claude Code configuration synced across machines.

## What's tracked

| File | Purpose |
|---|---|
| `settings.json` | Permissions, plugins, effort level |
| `CLAUDE.md` | Global instructions for all projects |
| `commands/` | Custom slash commands |
| `paul-framework/` | PAUL project management framework |

## Settings highlights

| Setting | Value | Effect |
|---|---|---|
| `permissions.defaultMode` | `auto` | Auto mode on by default — Claude approves safe tool calls without prompting |
| `effortLevel` | `high` | Always uses maximum thinking effort |
| `permissions.allow` | git, ls, bun | Common commands auto-approved |

## Custom commands

### `/session-retrospective`

Run at the end of any session to extract learnings from the conversation.

Analyzes the conversation for corrections, friction points, missing rules, and automation opportunities — then suggests additions to `CLAUDE.md` (global or project), `settings.json` hooks, new skills, and memory.

Always presents all suggestions first and asks for approval before applying anything.

## Setup on a new machine

```bash
git clone git@github.com:GuilhermeBorges/claude-config.git ~/.claude
```

Then reinstall plugins from within Claude Code (`/plugins add ...`).

## What's NOT tracked

- `plugins/` — plugin cache, reinstall per machine
- `projects/` — project memories (absolute paths differ per machine)
- `sessions/`, `history.jsonl`, `plans/`, `tasks/` — runtime state
