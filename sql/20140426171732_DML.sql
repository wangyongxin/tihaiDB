INSERT INTO `admin`
(`createdate`,`modifydate`,`username`,`password`,`email`,`name`,`department`,`isenabled`,`islocked`,`loginfailurecount`,`lockeddate`,`logindate`,`loginip`)
VALUES
(NOW(),NOW(),'wangyongxin','123456','wangyongxin546@163.com','wangyongxin',null,1,0,0,null,null,null)
/

INSERT INTO `role`
(`createdate`,`modifydate`,`name`,`description`,`issystem`)
VALUES
(NOW(),NOW(),'admin','admin',1)
/
