class GithubWrapper
  require 'github_api'

  def  initialize

  end

  def list_all
    @github = Github.new basic_auth: "#{ENV['GIT_USER']}:#{ENV['GIT_PASS']}"
    list_repos = @github.repos.list
    return list_repos
  end

end