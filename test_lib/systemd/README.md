## usage
* [systemd用法-白话](https://www.cadoyi.com/book/book/view.html?id=1)
* [Restart字段](https://blog.csdn.net/qq_18998145/article/details/93196886)
- 操作步骤
  - vim 增加 sudo vim /etc/systemd/system/xxxx.service 增加配置
  - systemctl daemon-reload 重启相关服务
  - systemctl status/start/stop/restart xxx 操作相关服务


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

## filebrowser
* [filebrowser白话](https://www.ithome.com/0/395/740.htm)
使用 vim 增加 systemd 配置 sudo vim /etc/systemd/system/filebrowser.service 放入如下内容:
```shell
[Unit]
Description=filebrowser Daemon

[Service]
ExecStart=/usr/local/bin/filebrowser -a 0.0.0.0 -p 8080 -r /home/share/filebrower
Restart=on-failure

[Install]
WantedBy=multi-user.target
```
