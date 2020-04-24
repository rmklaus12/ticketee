# frozen_string_literal: true

class ProjectsController < ApplicationController
  def index; end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.after_save
      flash[:notice] = 'Project has been created.'
      redirect_to @project
    else
      # nothing, yet
    end
  end
end
