#!/bin/bash

format_func() {
dos2unix ./data/csv_condition/condition.csv
}

DOTHECOLUMNS() {
    IFS=',';
    COUNT=0; 
        for i in $(cat ./data/csv_condition/condition.csv | head -n 1);
        do COLUMN[$COUNT]=$i;
        COUNT=$(( $COUNT + 1 ));
     done
}

template() {
source $1
echo "{\"data\":{\"type\":\"${type}"\",\"name\":\"$name"\",\"enabled\":$enabled,\"where_clause\":\"$where_clause\",\"policy_id\":"$policy_id",\"event_type\":\"$event_type"\",\"select_value\":\"${select_value}"\",\"comparison\":\"$comparison"\",\"critical_threshold\":{\"value\":"${critical_threshold_value}",\"duration_minutes\":"${critical_threshold_duration_minutes}",\"time_function\":\"${critical_threshold_time_function}"\"}}}"
}

PARSECSV() { 
        IFS=$'\n'
    for LINE in `grep -vE '^$|policy_id' ./data/csv_condition/condition.csv`; do
        IFS=',';
        COUNT=0;
        for C in $LINE; do
            echo "${COLUMN[$COUNT]}=\"$(echo $C | sed -e s/'`'/'\\`'/g)\" " >> ./data/json_condition/.$$;
            COUNT=$(( $COUNT + 1 ));
        done;
        unset IFS;
        template ./data/json_condition/.$$;
#        rm ./data/json_condition/.$$;
    done 
}
#set -x
#DOTHECOLUMNS && PARSECSV | $(cd ./data/json_condition && split -l 1)
