class GroupsController < ApplicationController
  before_action :redirect_to_splash
  load_and_authorize_resource
  def index
    @groups = Group.includes([:classifies]).where(author: current_user)
  end

  def show
    @group = Group.find(params[:id])
    @expenses = @group.expenses.order(created_at: :desc)
  end

  def create
    @group = Group.new(group_params)
    @group.author = current_user
    if @group.save
      redirect_to @group
    else
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end

end
