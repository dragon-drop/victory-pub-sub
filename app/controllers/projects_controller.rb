class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    Projects::Update.call(@project, project_params)
  end

  private

  def project_params
    params.require(:project).permit(:status, :year_home_built)
  end
end
