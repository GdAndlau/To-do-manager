class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new # why do we need it? Is it as an arg for the next method?
  end

  def create
    raise
    @task_created = Task.new(task_params)
    @task_created.save
    redirect_to tasks_path # how to we move to task?
  end

  def edit
    @task = Task.find(params[:id]) # again why defin it here?
  end

  def update
    @task = Task.find(params[:id]) # how does update link to folder?
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end


end
