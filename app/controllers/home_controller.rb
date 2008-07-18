class HomeController < ApplicationController
  before_filter :load_items 
  
  def index
    @incomplete_tasks = current_user.tasks.with_status :open 
    @completed_tasks = current_user.tasks.with_status :closed
  end
  
  def finish
    sleep 5
    @task = current_user.tasks.find(params[:id]) 
    @task.update_attribute("status", "closed") 
  end

  def save 
    @task = Task.new(params[:task].merge({ :status => "open" }))
    @task.owner = current_user 
    @task.save 
  end

  protected 

  def load_items 
    @projects = Project.find(:all).collect { |p| [p.name, p.id] } 
  end
end
