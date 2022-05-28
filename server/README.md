## ftp
* [ftp白话](https://help.aliyun.com/document_detail/60152.html)


## file browser
* [filebrowser中文](https://www.filebrowser.cn/)
* [filebrowser/filebrowser](https://github.com/filebrowser/filebrowser)

- 测试环境：centos7.6
- 安装版本：[v2.21.1/linux-amd64-filebrowser.tar.gz](https://github.com/filebrowser/filebrowser/releases/download/v2.21.1/linux-amd64-filebrowser.tar.gz)
  - 更多版本见[filebrowser_release](https://github.com/filebrowser/filebrowser/releases)
- 操作步骤 [installation](https://filebrowser.org/installation)
```shell
if [ ! -d /root/share/filebrower ]; then
    mkdir -p /root/share/filebrower
fi
curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash
filebrowser -r /path/to/your/files
```
