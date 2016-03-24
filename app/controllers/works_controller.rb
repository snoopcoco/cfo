class WorksController < ApplicationController
    
  def create
    @project = Project.find(params[:project_id])
    @work = @project.works.create(work_params)
    redirect_to project_path(@project.id)
  end
  
  private
  
  def work_params
      params[:work].permit(:wkname)
  end
 end