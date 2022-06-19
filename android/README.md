## adb
* [更改 Android 设备 NTP 服务器](https://liuzesen.com/2020/05/10/%E6%9B%B4%E6%94%B9Android%E8%AE%BE%E5%A4%87NTP%E6%9C%8D%E5%8A%A1%E5%99%A8/)
* [ADB : unable to connect to 192.168.1.10:5555](https://stackoverflow.com/questions/33462720/adb-unable-to-connect-to-192-168-1-105555)

```shell
adb shell settings put global ntp_server ntp.aliyun.com
adb shell settings get global ntp_server
```
