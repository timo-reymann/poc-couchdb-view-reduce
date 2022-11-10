#!/bin/bash
set -x

# Delete database if present
curl -XDELETE http://localhost:5984/poc -u admin:admin || true 

# Create database
curl -XPUT http://localhost:5984/poc -u admin:admin 

# Create some dummy documents
for i in {1..10}
do
	curl -XPUT http://localhost:5984/poc/${i} --header "Content-Type: application/json" -d "{\"count\": ${i}, \"group\": $(expr $i % 2)}" -u admin:admin
done
