if exists("current_compiler")
  finish
endif
let current_compiler = "docker-compose"

" older Vim always used :setlocal
if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=docker\ compose\ build
" TODO
" CompilerSet errorfromat=...
