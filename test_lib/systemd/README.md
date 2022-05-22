## usage
* [systemd用法-白话](https://www.cadoyi.com/book/book/view.html?id=1)

## clash
* [linux-use-clash](https://einverne.github.io/post/2021/03/linux-use-clash.html)
使用 vim 增加 systemd 配置 sudo vim /etc/systemd/system/clash.service 放入如下内容:
```shell
[Unit]
Description=Clash Daemon

[Service]
ExecStart=/usr/local/bin/clash -d /etc/clash/
Restart=on-failure

[Install]
WantedBy=multi-user.target
```
