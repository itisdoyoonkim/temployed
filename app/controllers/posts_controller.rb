class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  def index
    @categories = Category.all

    if(params.has_key?(:category_name))
      category_id = Category.where(name: params[:category_name])
      @posts = Post.where(category_id: category_id).order(created_at: :desc).page(params[:page])
    else
      @posts = Post.order(created_at: :desc).page(params[:page])
    end
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
    redirect_to root_path, notice: "You are not allowed to perform the action." unless current_user == @post.user
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
    redirect_to root_path, notice: "You are not allowed to perform the action." unless current_user == @post.user

    @post.destroy
    respond_to do |format|
      format.html { redirect_to my_account_path, notice: 'Post was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
      
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path, notice: "The post does not exist anymore."
        
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
