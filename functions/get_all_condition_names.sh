#!/bin/bash

# Get ALL conditions by name
get_all_condition_names() {
curl -s -X GET --header "X-Api-Key: ${API}" \
  "https://infra-api.newrelic.com/v2/alerts/conditions?" | jq '.[][].name' 2>/dev/null
}
