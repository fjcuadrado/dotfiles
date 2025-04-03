" Python

" Only wrap text stuff
setlocal textwidth=79
setlocal formatoptions-=t

" ALE fixers and linters
let b:ale_fixers = ["ruff"]
let b:ale_linters = ["mypy", "ruff"]

" Disable highlight of kwargs of builtin functions and function calls
let g:python_highlight_builtin_funcs_kwargs = 0
let g:python_highlight_func_calls = 0
