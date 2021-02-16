class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]
  def index
    @tasks = Task.all
  end

  def show; end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params_task_create)
    @task.save
    redirect_to task_path(@task)
  end

  def edit; end

  def update
    @task.update(params_task_update)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def params_task_create
    params.require(:task).permit(:title, :details)
  end

  def params_task_update
    params.require(:task).permit(:title, :details, :completed)
  end
end
