## ftp
* [ftp白话](https://help.aliyun.com/document_detail/60152.html)
* [ftp用户配置](https://blog.csdn.net/soslinken/article/details/79304076)


## file browser
* [filebrowser中文](https://www.filebrowser.cn/)
* [filebrowser/filebrowser](https://github.com/filebrowser/filebrowser)
* [filebrowser白话](https://www.zatp.com/post/install-file-browser-tool/)

- 测试环境：centos7.6
- 安装版本：[v2.21.1/linux-amd64-filebrowser.tar.gz](https://github.com/filebrowser/filebrowser/releases/download/v2.21.1/linux-amd64-filebrowser.tar.gz)
  - 更多版本见[filebrowser_release](https://github.com/filebrowser/filebrowser/releases)
- 操作步骤 [installation](https://filebrowser.org/installation)
```shell
if [ ! -d /home/share/filebrower ]; then
    mkdir -p /home/share/filebrower
fi
curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash
filebrowser -r /home/share/filebrower
```

## rsync
* [rsync白话](http://www.bjpowernode.com/hot/888.html)
```shell
rsync -zvrh remoting.jar /root/work/
```

## repo
* [yum源](https://www.bilibili.com/read/cv16867337)
* [163-repo](http://mirrors.163.com/.help/)

```shell
wget http://mirrors.163.com/.help/CentOS7-Base-163.repo -O /etc/yum.repos.d/CentOS7-Base-163.repo
```

## ssh
* [ssh断开自动重连](https://www.jianshu.com/p/7ae538b38e45)
- 执行`vim /etc/ssh/ssh_config`增加如下配置
```shell
ServerAliveInterval 20
ServerAliveCountMax 20
```

## git
* [git文档](https://git-scm.com/book/zh/v2/%E8%B5%B7%E6%AD%A5-%E5%AE%89%E8%A3%85-Git)
* [编译安装白话](https://blog.csdn.net/u013934623/article/details/81518238)
* 更多版本见[git/tags](https://github.com/git/git/tags)

```shell
sudo dnf install dh-autoreconf curl-devel expat-devel gettext-devel \
  openssl-devel perl-devel zlib-devel
sudo dnf install asciidoc xmlto docbook2X
sudo ln -s /usr/bin/db2x_docbook2texi /usr/bin/docbook2x-texi
wget https://github.com/git/git/archive/refs/tags/v2.36.1.tar.gz
tar -zxf v2.36.1.tar.gz
cd git-2.36.1
make configure
./configure --prefix=/usr
make all doc info
sudo make install install-doc install-html install-info
```

## tg
* [安装tg白话](http://t.zoukankan.com/braless-p-14311802.html)
* [安装tg-centos](https://www.91yun.co/archives/5691)
