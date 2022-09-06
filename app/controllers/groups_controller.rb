class GroupsController < ApplicationController
  def index
    @groups = Group.includes([:classifies]).where(author: current_user)
  end

  def show
    @group = Group.find(params[:id])
    @expenses = @group.expenses
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end

end
