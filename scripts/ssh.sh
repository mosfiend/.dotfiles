#usr/bin/env bash
ssh=$(find ~/ssh -maxdepth 2 -mindepth 1 | fzf)
ssh_name=$(basename "$session" | tr . _)
ansible-vault view $ssh

#read -p "Enter Query: " query
#
#query=$(echo $query | tr ' ' '+')
#tmux neww bash -c "curl -s cht.sh/$selected~$query | less"
