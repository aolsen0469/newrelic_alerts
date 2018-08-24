# Newrelic_alerts

### Description

Administration of newrelic alerts by hand is a tedious task. This is a management tool for New Relic Alerts.

#### Prerequisites
- A new Relic account account with admin privileges.
- Generate an API key and copy that string to .options.conf
- jq (v1.5) installed
- dos2unix
- curl
#### OSX Installation
```
# OSX: brew install jq # Install jq
# OSX: brew install curl # Install curl
# OSX: brew install dos2unix # Install dos2unix
# clone the git repository
# Generate your API key in Newrelic. Add to .options.conf
# To execute a command
nrcli -h
```

TODO: https://developers.google.com/gdata/articles/using_cURL#authenticating


#### Policy Bulk Updates
- Download the policy data in CSV format from google sheets: trc_newrelic_alerts
- Update the file: policy.csv in the folder ./data/csv_policy 
- run --parse-csv-policy
- run --post-all-policies

#### Condition Bulk Updates 
- Download the condition data in CSV format from google sheets: trc_newrelic_alerts
- Update the file: condition.csv in the folder ./data/csv_condition 
- run --parse-csv-condition
- run --post-all-conditions

#### Functions
contains functions that will be sourced and called from the main script which contains the logic

#### Help 
```
Usage: ./nrcli.bsh [-f|-i] [options] <params>
     -h,  --help                                 Displays this help
     -f,  --file                                 Reads from JSON file. Specify a path 
     -i,  --id                                   Accepts a policy-id or condition-id
     -cp, --create-policy                        [ ./nrcli.bsh -f </path/to/file.json> -cp ]
     -dp, --delete-policy                        [ ./nrcli.bsh -i <id-of-policy> -dp ]
     -cc, --create-condition                     [ ./nrcli.bsh -f </path/to/file.json> -cc ] 
     -dc, --delete-condition                     [ ./nrcli.bsh -i <id-of-condition> -dc ]

          # Info Commands
     -lp, --list-existing-policy                 List all existing polies
     -lc, --list-existing-conditions-for-policy  List existing conditions for a certain policy
     -gc, --get-specific-condition               Get a specific condition
          --get-all-policy-id                    List ALL policy-id
          --get-all-policy-names                 List ALL policy-names
          --get-all-condition-id                 List ALL condition-id
          --get-all-condition-names              List ALL condition-names 

          # Batch Operations
          --parse-csv-policy                     parse policy.csv and split into json files 
          --parse-csv-condition                  parse condition.csv and split into json files
          --post-all-conditions                  Post all the conditions in ./data/json_conditions which have been parsed from the csv in ./data/csv_conditions
          --post-all-policies                    Post all the policies in ./data/json_policies which have been parsed from the csv in ./data/csv_policies
          --delete-all-policies                  Deletes ALL policies
          --delete-all-conditions                Deletes ALL conditions
          --update-notification-channel          Applies new notification channel to all policies - [ ./nrcli.bsh --update-notification-channel <id-of-notification-channel>]
```
