class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @projects = Project.all
    respond_with(@projects)
  end

  def show
    respond_with(@project)
  end

  def new
    @project = Project.new
    respond_with(@project)
  end

  def edit
    authorize! :manage, @project
  end

  def create
    @project = current_user.projects.new(project_params)
    @project.save
    respond_with(@project)
  end

  def update
    authorize! :manage, @project
    @project.update(project_params)
    respond_with(@project)
  end

  def destroy
    authorize! :manage, @project
    @project.destroy
    respond_with(@project)
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:name, :description, :budget, :duration, :organisation, :image, :resource)
    end
end
