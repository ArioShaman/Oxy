class ArticlesController < ApplicationController
before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    respond_to do |format|
      format.html
      format.json {
        @articles = Article.all
        #@articles = Article.paginate(:page => params[:page], :per_page => 4)

        render json: @articles
      }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json {
        render json: @article
      }
    end
  end

  def new
    respond_to do |format|
      format.html
      format.json {
        render json: Article.new
      }
    end
  end

  def edit
    respond_to do |format|
      format.html
      format.json {
        render json: @article
      }
    end
  end

  def create
    @article = Article.new post_params
    if @article.save
      render json: {post: @article, msg: "Post successfully created", redirect_to: "articles_path"}
    else
      render json: {errors: @article.errors, msg: @article.errors.full_messages.join(', ')}, status: 422
    end
  end

  def update
    if @article.update(article_params)
      render json: {post: @post, msg: "Post successfully updated", redirect_to: "posts_path"}
    else
      render json: {errors: @post.errors, msg: @article.errors.full_messages.join(', ')}, status: 422
    end
  end

  def destroy
    @article.destroy
    render json: {msg: "Post successfully deleted", redirect_to: "articles_path"}
  end

  private
    def set_post
      @article = Article.find(params[:id])
    end

    def post_params
      params.require(:article).permit(:title, :description, :image, :content, :category_id)
    end
end
