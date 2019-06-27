class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
  end

  def new
  end

  def create
    Article.create(article_params)
  end

  def destroy
    article = Article.find(params[:id])
    # if article.user_id == current_user.id
    #   article.destroy
    # end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    # if article.user_id == current_user.id
    #   article.update(article_params)
    # end
  end

  private
  def tweet_params
    params.permit(:title, :image, :content)
    # .merge(user_id: current_user.id)
  end

  # def move_to_index
  #   redirect_to root_path unless user_signed_in?
  # end
end
