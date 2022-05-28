## shell

### zsh
* [ohmyzsh/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh.git)
* [oh-my-zsh白话](https://blog.csdn.net/qierkang/article/details/85941316)
* [oh-my-zsh白话2](https://zhuanlan.zhihu.com/p/58073103)
```shell
yum install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# 可选,修改主题
# vim ~/.zshrc 修改ZSH_THEME="amuse"
# source ~/.zshrc  
```

## python

### poetry
* [python打包](https://www.jianshu.com/p/d4209d77c3b1)
* [poetry简单使用](http://t.zoukankan.com/zepc007-p-12054815.html)

```shell
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
source $HOME/.poetry/env
```

### venv
```shell
mkdir /root/venv
python -m venv /root/venv/test
source /root/venv/test/bin/activate
```

## editor

### vscode
* [vscode白话](https://segmentfault.com/a/1190000017949680)
