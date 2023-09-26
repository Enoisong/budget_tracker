class CategoriesController < ApplicationController
    def index
      return unless user_signed_in?
  
      @categories = current_user.categories.includes(:bills)
    end
  
    def show
      @category = Category.find(params[:id])
      @bills = @category.bills.order(created_at: :desc)
    end
  
    def new
      @category = Category.new
    end
  
    def create
      @category = current_user.categories.create(category_params)
      if @category.save
        redirect_to categories_path
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    private
  
    def category_params
      params.require(:category).permit(:name, :icon)
    end
  end
  