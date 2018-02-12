# gblog 

基于Go语言和beego框架的博客系统


### 演示地址
[演示地址](http://www.spxcds.com)

### 编译安装说明

First of ALL: 配置好你的Golang环境,包括$GOPATH设置等等

下载源码, 会自动编译成可执行文件`$GOPATH/bin/gblog`
```
go get -u github.com/spxcds/gblog
```
新建一个文件夹, 把需要的文件拷到该文件夹下
```
mkdir myblog && cd myblog
cp $GOPATH/bin/gblog .
cp -r $GOPATH/src/github.com/spxcds/gblog/conf .
```
该文件夹结构如下
```
myblog/
├── conf
│   └── app.conf
└── gblog
```

修改配置文件
```
vim ./conf/app.conf

```

导入MySQL
```
mysql -u username -p -D gblog < gblog.sql
````

运行
```
./gblog
```

### 访问地址
```
http://localhost:port
http://localhost:port/admin
username: admin
password: admin
```
