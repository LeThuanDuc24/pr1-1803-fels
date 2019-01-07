class Admin::CategoriesController < Admin::ApplicationController

  def index
    @categories = Category.paginate page: params[:page], per_page: 5
  end

  def show
    @category = Category.find params[:id]
  end
end
