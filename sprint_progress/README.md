##Preview

![](http://i.imgur.com/qSTyjLI.png)

## Description

Simple [Dashing](http://shopify.github.com/dashing) widget that displays a progress meter for your current [JIRA](https://www.atlassian.com/software/jira) sprint, with the completed and total point values at the bottom.

##Usage

#####Dependencies

Add `jira-ruby` to the gemfile:
```
gem 'jira-ruby'
```
and then just run
```
$ bundle install
```

#####Setup

To install this widget, simply run `dashing install a1dae02d476f6055f82a`.

Then substitute the following placeholders in `sprint_progress.rb` with the appropriate values:

- `ENV['JIRA_USERNAME']` => your JIRA username (optionally can be placed in your [environment variables](https://github.com/bkeepers/dotenv) file
- `ENV['JIRA_PASSWORD']` => your JIRA password (also optionally can be placed in your [environment variables](https://github.com/bkeepers/dotenv) file
- `https://your-jira-instance.atlassian.net` => the location of your JIRA instance
- `SPRINT_WIDGET_DATA_ID` => the target HTML element's `data-id` attribute in your layout

Finally, to include the widget on a dashboard, drop the following snippet into your layout:

    <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-view="SprintProgress" data-id="whatever_id_you_like"></div>
    </li>