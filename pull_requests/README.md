##Preview

![](http://i.imgur.com/IBITvsu.png)

## Description

Simple [Dashing](http://shopify.github.com/dashing) widget that displays all currently open pull requests across a GitHub organization.

##Usage

#####Dependencies

Add `octokit` to the gemfile:
```
gem 'octokit'
```
and then just run
```
$ bundle install
```

#####Setup

To install this widget, simply run `dashing install 9d91e0f0bc78265e8281`.

Then substitute the following placeholders in `github_prs.rb` with the appropriate values:

- `YOUR_GITHUB_AUTH_TOKEN` => your GitHub personal access token
- `YOUR_EXACT_GITHUB_ORGANIZATION_NAME` => the exact name of the organization to monitor on GitHub itself
- `PR_WIDGET_DATA_ID` => the target HTML element's `data-id` attribute in your layout

Finally, to include the widget on a dashboard, drop the following snippet into your layout:

    <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-view="PullRequests" data-id="whatever_id_you_like"></div>
    </li>