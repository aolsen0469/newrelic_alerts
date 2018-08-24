#!/bin/bash
list_existing_policies() {
curl -s -X GET 'https://api.newrelic.com/v2/alerts_policies.json' \
     -H "X-Api-Key: ${API}" | jq '.'
}
