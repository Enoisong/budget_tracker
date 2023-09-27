class BillsController < ApplicationController
  def new
    @bill = Bill.new
    @category = Category.find(params[:category_id])
  end

  def create
    @bill = Bill.new(bill_params)
    @bill.author = current_user
    @bill.categories << Category.find(params[:category_id])
    if @bill.save
      redirect_to category_path(params[:category_id])
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bill_params
    params.require(:bill).permit(:name, :amount)
  end
end
