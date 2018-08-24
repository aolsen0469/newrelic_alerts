#!/bin/bash
get_all_policy_id() {
curl -s -X GET 'https://api.newrelic.com/v2/alerts_policies.json' \
     -H "X-Api-Key: ${API}" | jq '.[][].id'
}
