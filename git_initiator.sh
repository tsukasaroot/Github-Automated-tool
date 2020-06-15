
workingPath=$1
repoName=$2
repoOrigin=$3
pathToGitignore=$4

echo 'initializing repo...\n'

echo "# $2" >> README.md
git init
git pull origin master --allow-unrelated-histories
git add README.md
cp $4 .
git commit -m "First commit"
git remote add origin git@github.com:$3/$2.git
git push -u origin master
git add *
git commit -m "First website push"
git push

echo 'Repo initialized'
