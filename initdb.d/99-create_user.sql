-- MySql5.7 까지
-- grant all privileges on DB이름.* to 계정ID@'%' identified by '계정비밀번호' with grant option;
-- flush privileges ;

-- MySQL 8
create user mmon identified WITH mysql_native_password by 'mmon@@1234' ;
grant all privileges on *.* to mmon@'%';
flush privileges;
