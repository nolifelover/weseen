class IssueProgress < ActiveRecord::Base
  belongs_to :issue
  belongs_to :user
  attr_accessible :check_at, :level, :name, :price, :remark, :status
end
