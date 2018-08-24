#!/bin/bash

get_conditions_for_specific_policy() {
curl -X GET --header "X-Api-Key: ${API}" \
  "https://infra-api.newrelic.com/v2/alerts/conditions?policy_id=${POLICY_ID}" | jq '.'
}
