git config --global credential.helper store

curl -s "https://api.github.com/$1/$2/repos?page=$3&access_token=$4&per_page=1000" | grep -w clone_url | grep -o '[^"]\+://.\+.git' | xargs -L1 git clone
