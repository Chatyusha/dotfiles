# git_prompt

autoload -U colors; colors

function git-prompt {
  local current_branch="$(git symbolic-ref --short HEAD 2> /dev/null)"
  if [ ! -e  ".git" ]; then
     # git 管理されていないディレクトリは何も返さない
     return
  fi
  local show_current_branch="${fg[green]}[${current_branch}]${reset_color}"
  echo "${show_current_branch}"
}

setopt prompt_subst
PROMPT='$(git-prompt) >>> '

echo "Loaded git_prompt"
