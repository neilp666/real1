class PagesController < ApplicationController
  def home
    if current_user
      redirect_to projects_path
    end
  end

  def about
  end

  def contact
  end
end
