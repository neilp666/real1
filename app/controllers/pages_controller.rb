class PagesController < ApplicationController

  before_action :authenticate_user!, only: [:dashboard]
  def home
    if current_user
      redirect_to dashboard_path
    end
    @projects = Project.last(10)
  end

  def dashboard
      @projects = current_user.projects
  end

  def about
  end

  def contact
  end
end
