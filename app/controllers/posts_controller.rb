class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  def index
    @posts = Post.order(created_at: :desc).page(params[:page])
    @categories = Category.all
  end

  def show
    views = @post.views + 1
    @post.update(views: views)
    @categories = Category.all
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(
        :body, 
        :image,
        :job_duration,
        :start_date,
        :end_date,
        :job_title,
        :location,
        :company_name,
        :job_description,
        :requirements,
        :category_id,
        :apply_link
        )
    end
end
