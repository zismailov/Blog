class Admin::CategoriesController < ApplicationController
  before_action :check_admin

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to admin_categories_path, notice: 'Category successfully created.'
    else
      redirect_to admin_categories_path, alert: 'Category is not created.'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to admin_categories_path, notice: 'Category successfully deleted.'
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def check_admin
    if current_user and current_user.admin?
    else
      render text: '403 - Forbidden.', status: '403'
    end
  end
end
