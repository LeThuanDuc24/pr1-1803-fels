class Admin::WordsController < Admin::ApplicationController

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

  def destroy
    Word.find(params[:id]).destroy
    redirect_to admin_words_url
  end
end
