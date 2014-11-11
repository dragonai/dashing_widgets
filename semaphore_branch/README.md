##Preview

![](http://i.imgur.com/N32seuy.png)
![](http://i.imgur.com/pHFVlYk.png)
![](http://i.imgur.com/Cj0Ohuw.png)

## Description

Simple [Dashing](http://shopify.github.com/dashing) widget that displays a single branch's build status for a specified [Semaphore](http://semaphoreapp.com) repository. Build status is reflected by the color of the widget. The difference between this widget and [rastasheep's](https://github.com/rastasheep/semaphore-dashing) is that this widget displays the title and author of the latest commit to help quickly identify the source of a build problem.

##Usage

#####Dependencies

Add `semaphoreapp` to the gemfile:
```
gem 'semaphoreapp'
```
and then just run
```
$ bundle install
```

#####Setup

To install this widget, simply run `dashing install 14b561fd3a8a112cb558`.

Then substitute the following placeholders in `semaphore_branch.rb` with the appropriate values:

- `YOUR_SEMAPHORE_AUTH_KEY` => your Semaphore auth token
- `exact_repo_name_here` => the exact name of the repo to monitor on Semaphore itself (needs to match Semaphore)
- `exact_branch_name_here` => the exact name of the branch to monitor on Semaphore itself (needs to match Semaphore)
- `BRANCH_WIDGET_DATA_ID` => the target HTML element's `data-id` attribute in your layout
- `REPO_TITLE_TO_DISPLAY` => the name of the repo to be displayed on the widget (doesn't need to match Semaphore)

Finally, to include the widget on a dashboard, drop the following snippet into your layout:

    <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-view="SemaphoreBranch" data-id="whatever_id_you_like"></div>
    </li>