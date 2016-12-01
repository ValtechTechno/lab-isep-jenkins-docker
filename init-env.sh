cd /opt
mkdir -p isep-devops/ci
cd $_
mkdir -p jenkins
mkdir -p gitlab/data gitlab/pg gitlab/redis
docker-composer start postgresql
docker exec -it ci_postgresql_1 sudo -u postgres bash
psql -d gitlabhq_production -c "CREATE EXTENSION pg_trgm;"
exit
docker-compose up
echo gitlab: http://localhost:800/
