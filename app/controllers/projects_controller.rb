class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy]
  
  def index
    @project = Project.new
    @project.task.build #1対多のため
    @projects_asoview = Project.where(pj_type: "asoview")
    @projects_media = Project.where(pj_type: "media")
    @projects_bizdev = Project.where(pj_type: "bizdev")
  end
  
  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path , notice: 'プロジェクトを保存しました'
    else
      @projects = Project.all
      flash.now[:alert] = 'プロジェクトの保存に失敗しました'
      render 'index'
    end
  end
  
  def edit
  end
  
  def update
    if @project.update(project_params)
      redirect_to root_path , notice: 'プロジェクトを変更しました'
    else
      render 'edit'
    end
  end
  
  def destroy
    @project.destroy
    redirect_to root_path , notice: 'プロジェクトを削除しました'
  end
  
  
  private
    def project_params
      params.require(:project).permit(:pj_type, :pj_name, :pj_detail)
    end
    
    def set_project
      @project = Project.find(params[:id])
    end
end
