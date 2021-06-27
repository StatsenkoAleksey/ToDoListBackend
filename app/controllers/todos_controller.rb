class TodosController < ApplicationController

  protect_from_forgery except: :sample

  def update
    @todo = Todo.find(params[:id])
    @todo.update(isCompleted: !@todo[:isCompleted])
    render :json => { :message => "ok", :status => 204 }
  end

  def new
    if (Integer(params[:project_id]) > 0)
      todo = Todo.new({text: params[:todo], isCompleted: false, project_id: params[:project_id]})
      todo.save
    else
      project = Project.new({title: params[:project]})
      project.save
      todo = Todo.new({text: params[:todo], isCompleted: false, project_id: project.id})
      todo.save
    end
    render :json => { :message => "ok", :status => 204 }
  end

end
