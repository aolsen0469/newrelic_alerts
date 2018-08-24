#!/bin/bash
retrieve_policy_id_from_hostgroup() {
curl -s -X GET 'https://api.newrelic.com/v2/alerts_policies.json' \
     -H "X-Api-Key: ${API}" | jq ".[][] | select(.name==\".*\") | .id" | tr -d '"'
}
