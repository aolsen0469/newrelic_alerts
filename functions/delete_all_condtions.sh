#!/bin/bash
delete_all_conditions() {
#source ./get_all_condition_id.sh

for condition_id in $(get_all_condition_by_id); do
curl -X DELETE --header "X-Api-Key:${API}" \
  "https://infra-api.newrelic.com/v2/alerts/conditions/${condition_id}"
done
}
