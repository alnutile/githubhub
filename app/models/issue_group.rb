class IssueGroup < ActiveRecord::Base
  attr_accessible :description, :title, :repos_attributes
  has_many :repos
  accepts_nested_attributes_for :repos, allow_destroy: true
end
