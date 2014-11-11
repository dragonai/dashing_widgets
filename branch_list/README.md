##Preview

![](http://i.imgur.com/6oqzafE.png)

## Description

Simple [Dashing](http://shopify.github.com/dashing) widget that displays the build statuses of all branches of a [Semaphore](http://semaphoreapp.com) repository, reflecting each branch's latest build status through text color.

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

To install this widget, simply run `dashing install bfa70e8e85a5f64b44aa`.

Then substitute the following placeholders in `semaphore_branches.rb` with the appropriate values:

- `YOUR_SEMAPHORE_AUTH_KEY` => your Semaphore auth token
- `LIST_WIDGET_DATA_ID` => the target HTML element's `data-id` attribute in your layout
- `REPO_TITLE_TO_DISPLAY` => the name of the repo to be displayed on the widget (doesn't need to match Semaphore)
- `exact_repo_name_here` => the exact name of the repo to monitor on Semaphore itself (does need to match Semaphore)

Finally, to include the widget on a dashboard, drop the following snippet into your layout:

    <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-view="BranchList" data-id="whatever_id_you_like"></div>
    </li>