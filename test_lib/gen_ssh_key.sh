email=${1}
ssh-keygen -t rsa -N '' -C ${email} -f ~/.ssh/id_rsa_github -q
echo 'ssh public key: '
cat ~/.ssh/id_rsa_github.pub
#https://blog.csdn.net/qq_43634735/article/details/121197352
ssh-agent -s
ssh-add ~/.ssh/id_rsa_github
