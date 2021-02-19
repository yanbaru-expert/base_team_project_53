class TasksController < ApplicationController
  def index 
    @index = Task.all
  end

  def new 
    @task = Task.new
  end

  def create 
    Task.create(task_params)
  end

  def show
    @show = Task.find(params[:id])
  end

  def edit 
    @edit = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
  end

  def destroy 
    task = Task.find(params[:id])
    task.destroy
  end

  private 
  def task_params 
    params.require(:task).permit(:title, :content)
  end
end
