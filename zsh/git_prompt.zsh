# git_prompt

autoload -U colors; colors

function git-prompt {
  if [ ! -e  ".git" ]; then
     # git 管理されていないディレクトリは何も返さない
     return
  fi
  local current_branch rep_status show_current_branch
  current_branch="$(git symbolic-ref --short HEAD 2> /dev/null)"

  rep_status=$(git status 2> /dev/null)

  if [[ -n $(echo $rep_status | grep "^Changes to be committed") ]];then
    show_current_branch="${fg[green]}[${current_branch}]${reset_color}"
  elif [[ -n $(echo $rep_status | grep "^no changes added to commit") ]]; then 
    show_current_branch="${fg[red]}[${current_branch}]${reset_color}"
  elif [[ -n $(echo $rep_status | grep "^nothing to commit,") ]];then    
    show_current_branch="${fg[white]}[${current_branch}]${reset_color}"
  fi
  echo "${show_current_branch}"
}

setopt prompt_subst
PROMPT='$(git-prompt) >>> '

echo "Loaded git_prompt"
