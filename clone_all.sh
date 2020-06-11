git config --global credential.helper store

curl -s "https://api.github.com/$3/$1/repos?page=$2&access_token=6ec6b7d959b5d10ac05d65aeab609a819309e8bf&per_page=1000" | grep -w clone_url | grep -o '[^"]\+://.\+.git' | xargs -L1 git clone
