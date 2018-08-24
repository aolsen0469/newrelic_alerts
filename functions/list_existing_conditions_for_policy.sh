#!/bin/bash

list_existing_conditions_for_policy() {
curl -s X GET --header "X-Api-Key: ${API}" \
  "https://infra-api.newrelic.com/v2/alerts/conditions?policy_id=${policy_id}" # | jq '.'
}
