# frozen_string_literal: true

class ProjectsController < ApplicationController
  def index; end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      flash[:notice] = 'Project has been created.'
      redirect_to @project
    else
      # nothing, yet
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  # can call the require method on params and require the :project key exists and allows
  # it to have :name and :description entries, any other fields submitted will be discarded
  # Adding to private makes sure the method is not exposed
  def project_params
    params.require(:project).permit(:name, :description)
  end
end
