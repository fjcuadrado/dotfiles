" Python

" Only wrap text stuff
setlocal textwidth=79
setlocal formatoptions-=t

" ALE fixers and linters
let b:ale_fixers = ["ruff"]
let b:ale_linters = ["mypy", "ruff"]
