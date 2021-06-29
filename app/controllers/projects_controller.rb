class ProjectsController < ApplicationController
  def index
    listOfProjects = []
    for project in Project.all
      listOfTodos = []
      puts project[:id]
      for todo in Todo.where(:project_id => project[:id])
        listOfTodos += [{:id => todo[:id], :text => todo[:text], :isCompleted => todo[:isCompleted]}]
      end
      listOfProjects += [:id => project[:id], :title => project[:title], :todos => listOfTodos]
    end
    render :json => listOfProjects
  end

  
end
