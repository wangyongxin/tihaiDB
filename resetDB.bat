@echo 删除数据库
mysql -uroot -p123456 -e "drop database if exists tihai"

@echo 新建数据库
mysql -uroot -p123456 -e "create database tihai DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci"

@echo 创建changelog
call mvn package

@echo 执行数据库更新
call mvn dbdeploy:update
pause