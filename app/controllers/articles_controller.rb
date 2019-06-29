class ArticlesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @articles = Article.paginate(page: params[:page], per_page: 8)
  end

  def show
    @articles = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = '投稿しました'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.user_id == current_user.id
      @article.destroy
      flash[:notice] = '削除しました'
      redirect_to root_path
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.user_id == current_user.id
      @article.update(article_params)
      flash[:notice] = '更新しました'
      redirect_to root_path
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :content, :image, :image_cache, :remove_image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end
end
