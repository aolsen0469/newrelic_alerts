#!/bin/bash
retrieve_policyname_from_hostgroup() {
curl -s -X GET 'https://api.newrelic.com/v2/alerts_policies.json' \
     -H "X-Api-Key: ${API}" | jq ".[][] | select(.name==\"${HOSTGROUP}\") | .name" | tr -d '"'
}
