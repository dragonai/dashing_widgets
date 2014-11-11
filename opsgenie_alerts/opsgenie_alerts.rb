require 'curb'
require 'json'

SCHEDULER.every '30s', :first_in => 0 do |job|
  opsgenie_key = "YOUR_OPSGENIE_KEY"
  raw_alerts = Curl.get("https://api.opsgenie.com/v1/json/alert?apiKey=#{opsgenie_key}&status=unacked&limit=5")
  alerts = JSON.parse(raw_alerts.body_str)['alerts'].count

  send_event('ALERTS_WIDGET_DATA_ID', { title: "Unacknowledged<br>Alerts", value: alerts })
end
