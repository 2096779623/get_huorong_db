# get_huorong_db

| 用途                | 文件名         |
| :------------------ | :------------- |
| 用户配置文件        | config.db      |
| 行为拦截记录和配置  | hips.db        |
| 病毒库              | virdb/*        |
| 联网控制限速        | hrfw.db        |
| IP黑名单,IP协议控制 | ipproto.db     |
| 行为拦截日志        | log.db         |
| 系统修复            | sysrepair.db   |
| 垃圾清理            | db/sysclean.db |
| 系统防护            | user.db        |
| 信任区,爆破攻击防护 | wlfile.db      |
| 文件监控日志        | applog.db      |

一个~~垃圾~~模块，师傅们轻点喷

# 安装

## Linux

```bash
wget -O /usr/share/metasploit-framework/modules/post/windows/gather/get_huorong_db.rb https://raw.githubusercontent.com/2096779623/get_huorong_db/main/get_huorong_db.rb
```

## Windows

把[get_huorong_db.rb](https://raw.githubusercontent.com/2096779623/get_huorong_db/main/get_huorong_db.rb)丢到你的metasploit安装路径下的`embedded/framework/modules/post/windows/gather`文件夹。

# 使用

```bash
use post/windows/gather/get_huorong_db
set FILENAME #要获取的文件名
set DIRECTORY #可选，指定目录，比如db，不需要加/或\
set SESSION #懂得都懂
run
