#!/bin/bash

get_specific_condition() {
curl -X GET --header "X-Api-Key: ${API}" \
 "https://infra-api.newrelic.com/v2/alerts/conditions/${condition_id}"
}
