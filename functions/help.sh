#!/bin/bash
help() {
    cat << EOF
Usage: ./nrcli.bsh [-f|-i] [options] <params>

          # Info Commands
          --help                                 Displays this help
          --get-all-policy-id			 List ALL policy-id
          --get-all-condition-id		 List ALL condition-id
          --get-all-policy-names		 List ALL policy-names
          --get-all-condition-names		 List ALL condition-names 

          # Batch Operations
          --parse-csv-policy                     parse policy.csv and split into json files 
          --parse-csv-condition                  parse condition.csv and split into json files
          --post-all-conditions                  Post all the conditions in ./data/json_conditions which have been parsed from the csv in ./data/csv_conditions
          --post-all-policies                    Post all the policies in ./data/json_policies which have been parsed from the csv in ./data/csv_policies
          --delete-all-policies			 Deletes ALL policies
          --delete-all-conditions                Deletes ALL conditions
          --update-notification-channel          Applies new notification channel to all policies - [ ./nrcli.bsh --update-notification-channel <id-of-notification-channel>]
EOF
}
