class ChildsController < ApplicationController

def index
  @children = Child.all
  @child = current_user.child
end

def new
  @child = Child.new
end

def create
  @child = Child.new(child_params)
  @child.save
  if @child.save
    redirect_to :action => 'index', :id => @child.id
  else
     @child = Child.find(params[:id])
     render new_child_path
  end
end

def update
  @child = Child.find_by(params[:id])
  if @child.update_attributes(child_params)
     redirect_to :action => 'show', :id => @child.id
  else
    @child = Child.find(:all)
    render :action => 'edit'
  end
end

def show
  @child = Child.find_by(params[:id])
end

private

def child_params
  params.require(:child).permit(:avatar, :name, :age, :user_id)
end

end
