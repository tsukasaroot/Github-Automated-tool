find ~/$1 -maxdepth 1 -type d -print -execdir git -C {}/. pull origin master \;
