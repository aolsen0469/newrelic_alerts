#!/bin/bash
get_all_condition_id() {
whitelist=("3210993")
curl -s -X GET --header "X-Api-Key: ${API}" \
  "https://infra-api.newrelic.com/v2/alerts/conditions?" | jq '.[][].id' 2>/dev/null | grep -v "${whitelist[@]}"
}
