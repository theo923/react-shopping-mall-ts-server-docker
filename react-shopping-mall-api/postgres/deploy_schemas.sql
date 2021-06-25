-- Deploy fresh database files --
\i '/docker-entrypoint-initdb.d/tables/users.sql'
\i '/docker-entrypoint-initdb.d/tables/login.sql'
\i '/docker-entrypoint-initdb.d/tables/itemlist.sql'
\i '/docker-entrypoint-initdb.d/tables/newslist.sql'

\i '/docker-entrypoint-initdb.d/seed/seed.sql'