#!/bin/bash
delete_policy() {
DATA=$(</dev/stdin)
CONDITION_ID=$(echo ${DATA})
curl -X DELETE "https://api.newrelic.com/v2/alerts_policies/${CONDITION_ID}.json" \
     -H "X-Api-Key:${API}"
}
