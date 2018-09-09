#!/bin/bash
psql -U root -d dummy_database << "EOSQL"
CREATE TABLE dummy_table (
  id         INTEGER PRIMARY KEY,
  number     TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);
EOSQL
