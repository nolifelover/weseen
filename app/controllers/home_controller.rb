class HomeController < ApplicationController
  def index
    @users = User.all
    @issues = Issue.last(5)
  end

  def about

  end
end
