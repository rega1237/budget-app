class ExpensesController < ApplicationController
  before_action :redirect_to_splash
  load_and_authorize_resource
  def new
    @group = Group.find(params[:group_id])
    @expense = Expense.new
    @groups = Group.where(author_id: current_user.id)
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.author = current_user
    @group = Group.find(params[:group_id])
    if params[:group_ids]
      params[:group_ids].each do |group_id|
        group = Group.find(group_id)
        group.expenses << @expense
      end
      redirect_to @group
    else
      redirect_to new_group_payment_path(@group), flash: { alert: 'You must select at least one category.' }
      return
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount)
  end
end
