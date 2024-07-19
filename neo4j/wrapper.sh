#!/bin/bash

log_info() {
  printf '%s %s\n' "$(date +"%Y-%m-%d %H:%M:%S:%3N%z") INFO  Wrapper: $1"  # Display local time (PST/PDT)
  return
}

set -m

/docker-entrypoint.sh neo4j &

log_info "Checking to see if Neo4j has started..."
wget --quiet --tries=10 --waitretry=10 -O /dev/null http://${DB_HOST}:${DB_PORT}
log_info "Neo4j has started 🤓"

log_info  "Loading and importing Cypher file(s)..."

for cypherFile in /var/lib/neo4j/import/*.cypher; do
    log_info "Processing ${cypherFile}..."
    contents=$(cat ${cypherFile})
    cat ${cypherFile} | cypher-shell -u ${DB_USER} -p ${DB_PASSWORD} --format plain
done

log_info  "Finished loading data."

fg %1