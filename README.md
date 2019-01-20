# Sakura_DDNS
Sakura Frp 公网版（DDNS 动态解析）客户端程序

官网：https://www.natfrp.org/

## 使用方法

打开命令行，输入 `文件名 你的用户名 你的AccessToken`

用户名就是 Sakura Frp 的用户名。

Access Token 可以在 Sakura Frp 后台 》账号安全 页面查看。

例如用我的账号登录

```
SakuraDDNS_windows_amd64.exe KasuganoSora abcdefghijklmnopqrstuvwxyz
```

> Linux 下需要在文件名前面加个 `./`，如果出现 Permission denied，请输入 `chmod +x 文件名`

## Windows 一键运行脚本

将下面的内容修改后保存为一个 .cmd 或者 .bat 文件，和客户端放在一起就可以了。

```
@echo off
set ddns_user=你的账号
set ddns_token=你的AccessToken
set ddns_client=客户端文件名
:run
%ddns_client% %ddns_user% %ddns_token%
timeout /t 600
goto run
```

> 运行后会出现一个命令提示符窗口，将它最小化即可，它将会每隔 10 分钟更新一次 IP。

## Linux 一键运行脚本

这里以 Linux 64 位作为例子，首先执行命令

```
wget https://cdn.tcotp.cn/assets/SakuraDDNS/SakuraDDNS_linux_amd64.tgz
tar xzvf SakuraDDNS_linux_amd64.tgz
touch run.sh
chmod +x run.sh
vi run.sh
```

复制下面的内容，右键粘贴并修改账号、token 等信息

```
#!/bin/sh
ddns_user=你的账号
ddns_token=你的AccessToken
ddns_client=客户端文件名
while :
do
	./$ddns_client $ddns_user $ddns_token
	sleep 600
done
```

输入后，按下 Esc，然后输入 `:wq` 保存并退出，然后输入以下命令运行

```
./run.sh
```

> Linux 在后台运行的方法参考这篇文章：https://www.zerobbs.net/thread/6
