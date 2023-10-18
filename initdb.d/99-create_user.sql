-- MySql5.7 까지
-- grant all privileges on DB이름.* to 계정ID@'%' identified by '계정비밀번호' with grant option;
-- flush privileges ;

-- MySQL 8
-- mall_shop user create
create user mmon identified WITH mysql_native_password by 'mmon@@1234' ;
grant all privileges on mall_shop.* to mmon@'%';

-- diquest user create
create user diquest identified WITH mysql_native_password by 'diquest@@1234' ;
grant all privileges on diquest.* to diquest@'%';
grant SELECT on mall_shop.* to diquest@'%';
grant INSERT, UPDATE, DELETE on mall_shop.mariner_index_log to diquest@'%';

-- mts user create
create user mts identified WITH mysql_native_password by 'mts@@1234' ;
grant all privileges on mts.* to mts@'%';

-- coocon user create
create user coocon identified WITH mysql_native_password by 'coocon@@1234' ;
grant all privileges on coocon.* to coocon@'%';

flush privileges;
