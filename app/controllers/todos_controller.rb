class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = current_user.todos
  end

  def new
    @todo = Todo.new
  end

  def create
    current_user.todos.create(todo_parameters)
    redirect_to todos_path
  end

  private

  def todo_parameters
    params.require(:todo).permit(:title).merge(email: current_user.email)
  end
end
