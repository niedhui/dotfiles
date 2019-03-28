function prepend_path
  if not contains $argv $fish_user_paths
    set -Up fish_user_paths $argv
  end
end
