# Claude Code — Global Config

Personal Claude Code configuration synced across machines.

## What's tracked

| File | Purpose |
|---|---|
| `settings.json` | Permissions, plugins, effort level |
| `CLAUDE.md` | Global instructions for all projects |
| `commands/` | Custom slash commands |
| `memory/` | Persistent memory across sessions (per project) |

## Settings highlights

| Setting | Value | Effect |
|---|---|---|
| `permissions.defaultMode` | `auto` | Auto mode on by default — Claude approves safe tool calls without prompting |
| `effortLevel` | `high` | Always uses maximum thinking effort |
| `permissions.allow` | git, ls, bun, WebFetch | Common commands auto-approved (git, ls, bun run/install/publish, bunx biome/tsup, web fetching) |

## Hooks

### `Stop`

Fires when Claude finishes responding. Shows a macOS native notification: **"Task completed"**. Useful for long-running tasks when you're away from the window.

### `PreCompact`

Fires before every context compaction (manual or auto). Displays a `systemMessage` in the UI reminding you to flag anything important to preserve in the summary before Claude continues.

---

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
