# gblog 

基于Go语言和beego框架的博客系统


演示地址：

[http://www.spxcds.com/](http://www.spxcds.com/)

## 编译安装说明：

设置GOPATH(安装目录)

	$ export GOPATH=/path/to/gblog
	$ cd /path/to/gblog

获取源代码，下载完成后会自动编译为gblog可执行文件
	
	$ go get -u github.com/spxcds/gblog

修改数据库配置
	
	$ cd src
	$ vim github.com/spxcds/gblog/conf/app.conf
	
	appname = gblog
	httpport = 80
	runmode = dev
	dbhost = localhost 
	dbport = 3306
	dbuser = root
	dbpassword = 123456
	dbname = gblog
	dbprefix = tb_

导入MySQL

	$ mysql -u username -p -D gblog < gblog.sql

运行
	
	$ ./gblog
	或
	$ nohup ./gblog 2>&1 > gblog.log &
	设为后台运行

访问： 

http://localhost

后台地址：

http://localhost:80/admin

帐号：admin
密码：admin888

