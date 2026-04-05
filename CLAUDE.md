# Global Claude Instructions

## Git Worktree Setup

Ao criar um worktree, **nunca commitar direto na main**.
O fluxo correto é:

1. `git checkout -b feat/minha-branch` — criar a branch primeiro
2. Adicionar `.worktrees/` ao `.gitignore` e commitar **na branch**
3. `git worktree add .worktrees/feat/minha-branch feat/minha-branch`

When committing from inside a worktree subpath, use `git -C <worktree-root>` to avoid pathspec errors with relative paths.
