# Github-Automated-tool
Set of some tools to automate github deployment

clone_all.sh:
Just a dumb find looking through all given user repo to clone all of them (useful for a first clone on a new backup disk).

The script takes up to two arguments. 
$1 = github username, $2 = the page 
(this script can clone up to 100 repo on one page, if theres more, need to launch the script again with second page as argument)

push_all.sh:
pull/add/commit then push all your websites/projects (using a maxdepth 1)

The script takes two arguments.
$1 = working directory, $2 = commit message

Works well with a CRON to regularly commit production website changes

update_all.sh:
Pull all the websites/projects in the given directory (using a maxdepth 1)
The script tajes only one argument.
$1 = working directory
