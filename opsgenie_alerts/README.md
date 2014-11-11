##Preview

![](http://i.imgur.com/ngDhPnp.png)
![](http://i.imgur.com/PnYXQWD.png)

## Description

Simple [Dashing](http://shopify.github.com/dashing) widget that indicates whether there are any unacknowledged [OpsGenie](http://www.opsgenie.com/) alerts.

##Usage

#####Dependencies

Add `curb` to the gemfile:
```
gem 'curb'
```
and then just run
```
$ bundle install
```

#####Setup

To install this widget, simply run `dashing install 83cf1aed44124ce7ac04`.

Then substitute the following placeholders in `opsgenie_alerts.rb` with the appropriate values:

- `YOUR_OPSGENIE_KEY` => your OpsGenie auth key
- `ALERTS_WIDGET_DATA_ID` => the target HTML element's `data-id` attribute in your layout

Finally, to include the widget on a dashboard, drop the following snippet into your layout:

    <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-view="OpsgenieAlerts" data-id="whatever_id_you_like"></div>
    </li>