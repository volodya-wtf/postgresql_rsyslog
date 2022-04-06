#!/bin/sh

# Remove last line "shared_preload_libraries='citus'"
#sed -i '$ d' ${PGDATA}/postgresql.conf

cat <<EOT >> ${PGDATA}/postgresql.conf
listen_addresses = '*'
shared_preload_libraries = 'pg_cron'
cron.database_name = 'postgres'
EOT

# Required to load pg_cron
#pg_ctl restart
