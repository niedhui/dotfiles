function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _git_status_symbol
  set -l git_status (git status --porcelain ^/dev/null)
  if test -n "$git_status"
    # Is there anyway to preserve newlines so we can reuse $git_status?
    if git status --porcelain ^/dev/null | grep '^.[^ ]' >/dev/null
      echo '*' # dirty
    else
      echo '#' # all staged
    end
  else
    echo    '' # clean
  end
end


function fish_prompt_default
  set -l cyan (set_color cyan)
  set -l normal (set_color normal)

  set -l cwd (set_color $fish_color_cwd)(prompt_pwd)
  set -l git_status (_git_status_symbol)(_git_branch_name)
  set -l format_date  (set_color  yellow )(date  "+%H:%M:%S")(set_color  normal)
  set -l format_date "[$format_date] "

  if test -n "$git_status"
    set git_status " $git_status"
  end

  echo -n $format_date$cwd$cyan$git_status$normal'> '
end

function fish_prompt_vagrant
  echo -n -s $USER @ (prompt_hostname) ' ' (set_color $fish_color_cwd) (prompt_pwd) (set_color $fish_color_normal) '> '
end

function fish_prompt
  switch $USER
    case vagrant
      fish_prompt_vagrant
    case '*'
      fish_prompt_default
  end
end
