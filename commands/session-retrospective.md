Analyze this conversation from start to finish and identify everything worth capturing as config, rules, skills, or memory. Then suggest changes and apply the approved ones.

## What to look for

**Corrections & redirections**
- Any "no", "don't", "stop", "instead", "I prefer" — explicit or implicit
- Things the user had to repeat or clarify
- Approaches that were redirected mid-way

**Missing rules**
- Situations where a CLAUDE.md rule would have prevented an error upfront
- Behaviors that should be default but weren't

**Friction points**
- Tasks that needed multiple attempts
- Misunderstandings about scope or intent
- Tools or patterns that didn't work and required pivoting

**Automation opportunities**
- Repetitive sequences that could be hooks
- Checks that should happen automatically before/after certain actions

**Memory-worthy facts**
- Non-obvious project context discovered during the session
- User preferences that would affect future sessions
- Decisions made and why (that aren't in git history)

---

## Output format

Present findings grouped by **destination**. For each suggestion include:
- **What**: the specific change or addition
- **Why**: what happened in this conversation that justifies it (be specific)
- **Draft**: the ready-to-apply content

### Groups

1. **`~/.claude/CLAUDE.md`** — global rules that apply to every project
2. **`[project]/CLAUDE.md`** — rules specific to this codebase
3. **`~/.claude/settings.json`** — hooks, new permission patterns
4. **New skill** — a reusable pattern worth codifying (only if it would apply across multiple future projects)
5. **Memory** — user, feedback, project, or reference facts to persist

Skip any group with no findings. Don't manufacture suggestions — only flag things with clear evidence from this conversation.

---

## Flow — always ask before applying

1. Present ALL suggestions grouped by destination
2. Ask: "Which of these would you like to apply? (list numbers or 'all')"
3. Wait for explicit confirmation
4. Apply only the approved ones — edit files, then commit if the destination is a tracked repo (`~/.claude` or the project repo)

Never apply any change without the user selecting it first.
