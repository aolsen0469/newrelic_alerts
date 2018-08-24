update_policy_notification_channel() {
curl -X PUT 'https://api.newrelic.com/v2/alerts_policy_channels.json' \
     -H "X-Api-Key: ${API}" \
     -H 'Content-Type: application/json' \
     -G -d "policy_id=${policy_id}&channel_ids=${channel_id}"
}
