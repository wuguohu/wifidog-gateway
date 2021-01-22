# wifidog-gateway

基于wifidog官方版本的修改版本，用来适配Android系统，修改部分兼容性问题

## 修改内容：

1. 修改系统命令路径及socket指向路径
2. 修改防火墙规则，去除iptables的mangle表，nat表，filter表中的mark规则，改用通过mac地址直接控制上网权限

## 注意事项

需要修改编译脚本Android.mk，增加编译后文件的拷贝规则，编译后的文件包括：

* /system/bin/wifidog
* /system/etc/wifidog.conf
* /system/etc/wifidog-msg.html
* /system/etc/init.d/wifidog

## 参考

1. https://github.com/wifidog/wifidog-gateway
2. https://www.jianshu.com/p/05ab519af0d7


