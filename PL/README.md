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

### PDM
* [PDM白话](https://zhuanlan.zhihu.com/p/468445226)

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

### emcas
* [emcas白话](https://liujiacai.net/blog/2020/11/25/why-emacs/)
* [emcas安装卸载白话](https://www.cnblogs.com/snake553/p/4943816.html)
* [emcas下载](https://mirror.bjtu.edu.cn/gnu/emacs/)

```shell
sudo yum -y groupinstall "Development Tools"
sudo yum -y install gtk+-devel gtk2-devel
sudo yum -y install libXpm-devel
sudo yum -y install giflib-devel
sudo yum -y install libtiff-devel libjpeg-devel
sudo yum -y install ncurses-devel
sudo yum -y install gpm-devel dbus-devel dbus-glib-devel dbus-python
sudo yum -y install GConf2-devel pkgconfig

wget http://ftp.gnu.org/pub/gnu/emacs/emacs-24.4.tar.gz
#wget https://mirror.bjtu.edu.cn/gnu/emacs/emacs-28.1.tar.gz

sudo tar xvf emacs-24.4.tar.gz

cd emacs-24.4
sudo ./configure -prefix=/usr/local -with-x-toolkit=gtk
#sudo ./configure -prefix=/usr/local -with-x-toolkit=gtk --with-gnutls=ifavailable
sudo make && make install
```

```shell
## uninstall
cd emacs-24.4 
sudo ./configure --prefix=/usr/local --with-x-toolkit=gtk --without-gsettings
sudo make
sudo make uninstall
```
