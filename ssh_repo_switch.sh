url=ssh://git@github.com/$2/

echo 'Fixing repos origin by the good one'
find ~/$1 -maxdepth 1 -type d -exec sh -c 'dir=$(basename {}); cd {}; git remote set-url origin '$url'$dir.git' \;
