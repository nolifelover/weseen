class Issue < ActiveRecord::Base

  before_create :assign_status

  STATUS_CREATED   = 0
  STATUS_ACK   = 1
  STATUS_IN_PROGRESS   = 3
  STATUS_DONE = 10

  attr_accessible :detail, :email, :flag, :fullname, :mobile, :place, :status, :time
  has_many :issue_progress, :dependent => :destroy

  validates_presence_of :detail
  validates_presence_of :fullname
  validates_presence_of :place
  validates_presence_of :time

  private
	  def assign_status
	    self.status = STATUS_CREATED
	  end

end
