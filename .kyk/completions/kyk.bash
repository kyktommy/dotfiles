_kyk() {
  COMPREPLY=()
  local word="${COMP_WORDS[COMP_CWORD]}"

  if [ "$COMP_CWORD" -eq 1 ]; then
    COMPREPLY=( $(compgen -W "$(kyk commands)" -- "$word") )
  else
    local command="${COMP_WORDS[1]}"
    local completions="$(kyk completions "$command")"
    COMPREPLY=( $(compgen -W "$completions" -- "$word") )
  fi
}

complete -F _kyk kyk
