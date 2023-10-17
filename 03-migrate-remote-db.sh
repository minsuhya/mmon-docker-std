#!/bin/sh

db_host=""
db_user=""
db_pass=""

docker pull mysql:8.0.31
docker run -i --rm mysql:8.0.31 mysql -h $db_host -P 3306 -u $db_user -p$db_pass < ./initdb.d/00-mmon_v2_mall_shop.sql
docker run -i --rm mysql:8.0.31 mysql -h $db_host -P 3306 -u $db_user -p$db_pass < ./initdb.d/01-mmon_v2_diquest.sql
docker run -i --rm mysql:8.0.31 mysql -h $db_host -P 3306 -u $db_user -p$db_pass < ./initdb.d/02-mmon_v2_mts.sql
docker run -i --rm mysql:8.0.31 mysql -h $db_host -P 3306 -u $db_user -p$db_pass < ./initdb.d/03-mmon_v2_partner_shop.sql
docker run -i --rm mysql:8.0.31 mysql -h $db_host -P 3306 -u $db_user -p$db_pass < ./initdb.d/04-mmon_v2_coocon.sql
docker run -i --rm mysql:8.0.31 mysql -h $db_host -P 3306 -u $db_user -p$db_pass < ./initdb.d/99-create_user.sql
docker image rm mysql:8.0.31

# SCM 경우만 실행
docker exec -w /var/www/scm -i $(docker container ls -a -q --filter "name=^mmon-solution-scm") sh -c "php artisan migrate --force"

# view 생성 확인 필요
echo "!!!데이터베이스 생성 후 SUPER Error 출력 시 View 생성 확인 필요"
