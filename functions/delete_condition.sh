#!/bin/bash

delete_condition() {
DATA=$(</dev/stdin)
CONDITION_ID=$(echo ${DATA}) # | jq -r '.[].id')

curl -X DELETE --header "X-Api-Key:${API}" \
  "https://infra-api.newrelic.com/v2/alerts/conditions/${CONDITION_ID}"
}
