## git
* [git多ssh-key管理](https://www.jianshu.com/p/7a4d95d8f924)
```shell
cat >> ~/.ssh/config  <<EOF
## github
Host github.com
HostName github.com
PreferredAuthentications publickey
identityFile ~/.ssh/id_rsa_github
EOF
```
