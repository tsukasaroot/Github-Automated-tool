
workingPath=$1
repoName=$2
repoOrigin=$3
pathToGitignore=$4

echo 'initializing repo...\n'

echo "# $2" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:$3/$2.git
cp $4 .
git push -u origin master

echo 'Repo initialized'
