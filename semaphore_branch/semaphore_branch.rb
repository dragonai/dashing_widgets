require 'semaphoreapp'
 
class SemaphoreConnector
 
  def initialize auth_key="YOUR_SEMAPHORE_AUTH_KEY"
    Semaphoreapp.auth_token = auth_key
  end
 
  def project_list
    Semaphoreapp::Project.all.map {|project| project.name }
  end
 
  def get_project project_name
    Semaphoreapp::Project.find_by_name(project_name)
  end
 
  def get_branches project_name
    Semaphoreapp::Project.find_by_name(project_name).branches.map {|branch| branch.branch_name }
  end
 
  def branch_status project_name, branch_title
    requested_branch = get_project(project_name).branches.find {|branch| branch.branch_name == branch_title }
    requested_branch_info = {
      "name" => requested_branch.branch_name,
      "build_number" => requested_branch.build_number,
      "build_status" => requested_branch.result,
      "last_build" => requested_branch.build_url,
      "last_build_time" => requested_branch.finished_at,
      "latest_commit_author" => requested_branch.commit.author_name,
      "latest_commit_message" => requested_branch.commit.message,
      "latest_commit_link" => requested_branch.commit.url
    }
  end
 
  def number_of_branches project_name
    get_branches(project_name).count
  end
 
end
 
@semaphore = SemaphoreConnector.new
 
def build_commit_info branch
  "\"#{branch['latest_commit_message'].slice!(0, 22)}...\"<br> - #{branch['latest_commit_author']}"
end
 
SCHEDULER.every '1m', :first_in => 0 do |job|
  @your_project = @semaphore.branch_status("exact_repo_name_here", "exact_branch_name_here")
  
  send_event('BRANCH_WIDGET_DATA_ID', {
    title: "REPO_TITLE_TO_DISPLAY",
    text: @your_project['name'],
    moreinfo: build_commit_info(@your_project),
    status: @your_project['build_status']
  })
 
end