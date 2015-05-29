class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def show
  	@articles = Article.find(params[:id])
  end
  def create
    @article = Article.new(post_params)
    if @article.save
      redirect_to @article, notice: "New Notice created"
    else
      render :new
    end
  end
  def update
    if @article.update(post_params)
      redirect_to @article, notice: "Post was updated"
    else
      render :edit
    end
  end
  def destroy
    @article.destroy
    redirect_to article_path, notice: "post was deleted"
    
  end
  private 
  def article_params
    params.require(:post).permit(:title, :body).merge(user:current_user)
  end
  def set_article
    @article = Article.find(params[:id])
    end
end
