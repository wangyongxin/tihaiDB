@echo ɾ�����ݿ�
mysql -uroot -p123456 -e "drop database if exists tihai"

@echo �½����ݿ�
mysql -uroot -p123456 -e "create database tihai DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci"

@echo ����changelog
call mvn package

@echo ִ�����ݿ����
call mvn dbdeploy:update
pause