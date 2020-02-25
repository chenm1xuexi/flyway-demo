# flyway-demo
主要用于记录flyway + springboot整合使用

### 这是一个使用flyway的小demo,让大家快速的熟悉起来对flyway的使用

flyway的具体相关配置请查看application.yml文件中的注释

这里统一定义数据迁移文件名称格式为：
```
Prefix + Version + Separator + Description + Suffix
来标识一个数据迁移文件。
比如: V1.0.1__Add_new_table.sql 这个例子：
前缀（Prefix） => V 

版本号（Version）=> 1.0.1

分隔符（Separator）=> __ （默认采用双下划线）

文件描述（Description）=> Add_new_table

后缀（Suffix）=> .sql
```

 flyway追踪迁移文件的生命周期是通过版本号来鉴定的，
 版本号采用最左前缀原则进行匹对
 比如：1.10.1 > 1.0.3 > 1.0.2 > 1.0.1 
 这种形式。
 
 服务的每次启动都会记录该次的最新的版本号，下次启动时会自动配对版本号是否有所更新
 ，更新则执行最新的数据迁移文件。

