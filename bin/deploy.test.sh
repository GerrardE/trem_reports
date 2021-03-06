# PGPASSWORD=YOUR_PASSRORD psql -h $TEST_POSTGRES_HOST -p $TEST_POSTGRES_PORT -U YOUR_USER_NAME -d YOUR_DATABASE  

# RUN DB MIGRATIONS
PGPASSWORD=$TEST_POSTGRES_PASSWORD psql -h $TEST_POSTGRES_HOST -p $TEST_POSTGRES_PORT -U $TEST_POSTGRES_USER -d $TEST_POSTGRES_DB < ./docs/testdata/countries.sql
PGPASSWORD=$TEST_POSTGRES_PASSWORD psql -h $TEST_POSTGRES_HOST -p $TEST_POSTGRES_PORT -U $TEST_POSTGRES_USER -d $TEST_POSTGRES_DB < ./docs/testdata/states.sql
PGPASSWORD=$TEST_POSTGRES_PASSWORD psql -h $TEST_POSTGRES_HOST -p $TEST_POSTGRES_PORT -U $TEST_POSTGRES_USER -d $TEST_POSTGRES_DB < ./docs/testdata/cities.sql
PGPASSWORD=$TEST_POSTGRES_PASSWORD psql -h $TEST_POSTGRES_HOST -p $TEST_POSTGRES_PORT -U $TEST_POSTGRES_USER -d $TEST_POSTGRES_DB < ./docs/testdata/zones.sql
PGPASSWORD=$TEST_POSTGRES_PASSWORD psql -h $TEST_POSTGRES_HOST -p $TEST_POSTGRES_PORT -U $TEST_POSTGRES_USER -d $TEST_POSTGRES_DB < ./docs/testdata/branches.sql
PGPASSWORD=$TEST_POSTGRES_PASSWORD psql -h $TEST_POSTGRES_HOST -p $TEST_POSTGRES_PORT -U $TEST_POSTGRES_USER -d $TEST_POSTGRES_DB < ./docs/testdata/users.sql
PGPASSWORD=$TEST_POSTGRES_PASSWORD psql -h $TEST_POSTGRES_HOST -p $TEST_POSTGRES_PORT -U $TEST_POSTGRES_USER -d $TEST_POSTGRES_DB < ./docs/testdata/roles.sql
PGPASSWORD=$TEST_POSTGRES_PASSWORD psql -h $TEST_POSTGRES_HOST -p $TEST_POSTGRES_PORT -U $TEST_POSTGRES_USER -d $TEST_POSTGRES_DB < ./docs/testdata/userroles.sql
PGPASSWORD=$TEST_POSTGRES_PASSWORD psql -h $TEST_POSTGRES_HOST -p $TEST_POSTGRES_PORT -U $TEST_POSTGRES_USER -d $TEST_POSTGRES_DB < ./docs/testdata/permissions.sql
PGPASSWORD=$TEST_POSTGRES_PASSWORD psql -h $TEST_POSTGRES_HOST -p $TEST_POSTGRES_PORT -U $TEST_POSTGRES_USER -d $TEST_POSTGRES_DB < ./docs/testdata/permissionroles.sql
