#!/bin/bash
policy_csv2json() {
IFS='}'
count=0;for i in $(cat ./data/csv_policy/policy.csv | ./data/csv2json.sh); do echo "$(echo ${i} | sed -e s/'^,'//g -e s/'\t*{'/'{"policy": {'/)}}" > ./data/json_policy/$count.json; count=$(( $count + 1)); done
unset IFS
}
