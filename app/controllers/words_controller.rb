class WordsController < ApplicationController
  before_action :logged_in_user

  def index
    @categories = Category.all
    if params[:category_id]
      @words = Word.category_id(params[:category_id])
    else
      @words = Word.all
    end

    if params[:type]
      @words = @words.send(params[:type])
    end

    @words = @words.paginate page: params[:page], per_page: 5
  end
end
