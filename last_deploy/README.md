##Preview

![](http://i.imgur.com/Tsc3Uc1.png)
![](http://i.imgur.com/y71VPgi.png)

## Description

Simple [Dashing](http://shopify.github.com/dashing) widget that displays how long ago the last deploy was according to [Rollbar](https://rollbar.com/).

##Usage

#####Dependencies

Add `httparty` to the gemfile:
```
gem 'httparty'
```
and then just run
```
$ bundle install
```

#####Setup

To install this widget, simply run `dashing install fab612ffc94403b687e5`.

Then substitute the following placeholders in `last_deploy.rb` with the appropriate values:

- `YOUR_ROLLBAR_API_TOKEN` => your Rollbar API key
- `DEPLOY_WIDGET_DATA_ID` => the target HTML element's `data-id` attribute in your layout

Finally, to include the widget on a dashboard, drop the following snippet into your layout:

    <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-view="LastDeploy" data-id="whatever_id_you_like"></div>
    </li>