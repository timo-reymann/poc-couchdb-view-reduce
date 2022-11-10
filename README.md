poc-couchdb-view-reduce
===

Proof of Concept utilizing reduce in a view

## Contents

- Creating db from scratch
- Generate some dummy data
- Create view via design document
- Query all documents from view
- Query single document from view


## Learnings

- grouping must be set for view queries, otherwise the key is null and it sums up all keys
- reduce is not used in Fauxton, but by default in API calls

## Execution

- Create couchdb container with docker-compose: `docker-compose up`
- Execute scripts in [scripts](./scripts), in the order they are named

