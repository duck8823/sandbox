#!/bin/bash
psql -U root -d dummy_sink << "EOSQL"
create table dummy_ltsv (id INT PRIMARY KEY, number TEXT);
EOSQL
