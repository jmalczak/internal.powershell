function gitp() {
     git pull
}

function gitpu() {
    git push
}

function gitcm($message) {
    git commit -m '$message'; 
}

function tor($cmd){
    & "C:\Program Files\TortoiseGit\bin\TortoiseGitProc.exe" /command:$cmd /path:.	
}

function setup-git($username, $email){
    git config --global user.name $username
    git config --global user.email $email
    git config --global alias.ss 'status -s'
    git config --global alias.cm 'commit -a -n -m'
    git config --global alias.aa 'add --all :/'
    git config --global alias.l 'log --oneline'
    git config --global alias.b 'branch -a -v'
    git config --global alias.co 'checkout'
    git config --global alias.cob 'checkout -b'
    git config --global alias.up 'pull --rebase --prune'
}
