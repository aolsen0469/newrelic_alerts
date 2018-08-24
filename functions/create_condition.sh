#!/bin/bash

create_condition() {
DATA=$(</dev/stdin)
curl -X POST 'https://infra-api.newrelic.com/v2/alerts/conditions' \
     -H "X-Api-Key:${API}" \
     -H 'Content-Type: application/json' \
     --data "${DATA}" 
}
