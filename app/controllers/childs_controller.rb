class ChildsController < ApplicationController

def index
  @child = Childs.all
end

def new
  @child = Child.new
end

def create
  @child = Child.new( child_params )
  @child.save
end

def show
  @child = Child.find_by(params[:id])
end

private

def child_params
  params.require(:child).permit(:avatar, :name, :age)
end

end
