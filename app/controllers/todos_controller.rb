class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_parameters)
    redirect_to todos_path
  end

  private

  def todo_parameters
    params.require(:todo).permit(:title)
  end
end
