class WorksController < ApplicationController
    
  def create
    @project = Project.find(params[:project_id])
    @work = @project.works.create(work_params)
    redirect_to project_path(@project.id)
  end
  
  def update
    if @work.update(work_params)
      redirect_to root_path , notice: 'ワークを変更しました'
    else
      render 'edit'
    end
  end
  
  def edit
      @work = Work.find(params[:work_id])
  end
  
  def destroy
    @work.destroy
    redirect_to root_path , notice: 'ワークを削除しました'
  end
  
  private
  
  def work_params
      params[:work].permit(:wkname, :wkdetail)
  end
 end