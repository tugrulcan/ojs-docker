#!/bin/bash
set -e [ set -e]
psql -d template1 -U postgres  <<-EOSQL
CREATE USER ojs WITH PASSWORD 'ojs';
CREATE DATABASE ojs;
GRANT ALL PRIVILEGES ON DATABASE ojs to ojs;
EOSQL
