class GroupsController < ApplicationController
  def index
    @groups = Group.all
    @group = Group.new
  end

  def create
    group = Group.create(group_params)
    redirect_to groups_path
  end



def new
  @group = Group.new
end

def update
  group = Group.find(params[:id])
    if group.update(group_params)
      redirect_to groups_path
    else
      flash[:error] = group.errors.full_messages
      redirect_to edit_group_path(group.id)
    end
end

def edit
  @group = Group.find(params[:id])
end

def show
  @group = Group.find(params[:id])
end

def delete
  group = Group.find(params[:id])
  redirect_to groups_path
end

private
  def group_params
    parameters = params.require(:group).permit(:group_id)
    parameters[:server_id] = session[:server_id]
    parameters
  end
end
