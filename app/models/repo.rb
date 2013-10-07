class Repo < ActiveRecord::Base
  attr_accessible :fullname, :name, :url
  belongs_to :issue_group
end
