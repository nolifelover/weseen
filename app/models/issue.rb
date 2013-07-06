class Issue < ActiveRecord::Base
  attr_accessible :detail, :email, :flag, :fullname, :mobile, :place, :status, :time
  has_many :issue_progress, :dependent => :destroy
end
