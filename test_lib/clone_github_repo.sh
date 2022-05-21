repo_name=$1
author=$2
email=$3
#author=OoGod
mkdir /root/github/
cd /root/github/
git clone git@github.com:${author}/${repo_name}.git
cd /root/github/${repo_name}
git config user.email ${email}
git config user.name ${author}
git pull origin main
