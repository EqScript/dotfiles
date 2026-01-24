function gac --description "git add . && git commit '<message>"
  if count $argv > /dev/null
    git add .
    and git commit -m "$argv"
  else 
    echo "Usage: gac <commmit message>"
    return 1
  end
end
