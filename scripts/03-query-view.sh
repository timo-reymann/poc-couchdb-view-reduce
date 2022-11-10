#!/bin/bash
set -x

# Query view for all items, important: group must be set to true to successfully group by key instead of just summing up all keys
curl 'http://localhost:5984/poc/_design/groupView/_view/groupView?group=true' -u admin:admin

# Query view for specific group, important: when group is not set to true then no key is returned at all
curl 'http://localhost:5984/poc/_design/groupView/_view/groupView?key=1&group=true' -u admin:admin
