#!/bin/bash
set -x

# Create new view in design document
curl -XPUT http://localhost:5984/poc/_design/groupView -u admin:admin -d \
'{
	"views": {
		"groupView": { 
			"map": "function (doc) {\n  emit(doc.group, doc.count);\n}", 
			"reduce": "function (keys, values, rereduce) {\n  if (rereduce) {\n    return sum(values);\n  } else {\n    return values.length;\n  }\n}"  
		}
	}
}'
