#!/bin/bash
create_policy() {
DATA=$(</dev/stdin)
curl -X POST 'https://api.newrelic.com/v2/alerts_policies.json' \
     -H "X-Api-Key: ${API}" \
     -H 'Content-Type: application/json' \
     --data "${DATA}" 
}
