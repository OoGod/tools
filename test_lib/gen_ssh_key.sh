email=${1}
ssh-keygen -t rsa -N '' -C ${email} -f ~/.ssh/id_rsa_github -q
echo 'ssh public key: '
cat ~/.ssh/id_rsa_github.pub
