class AddIssueGroupIdToRepos < ActiveRecord::Migration
  def change
    add_column :repos, :issue_group_id, :integer
  end
end
