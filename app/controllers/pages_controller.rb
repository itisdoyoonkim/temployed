class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:about, :home, :not_found]

  def about
  end

  def home
  end

  def my_account
    @educations = current_user.educations
    @experiences = current_user.experiences.order(to: :desc)
    @user = User.find(current_user.id)
  end

 def all_users
    @users = User.all
 end 

 def single_user
  @user = User.find(params[:id])

  if !@user.hireable
    redirect_to not_found_path
  end

  # @experiences = @user.experiences.sort_by &:to
  @experiences = @user.experiences.order(to: :desc)
  # @educations = @user.educations.sort_by &:to
  @educations = @user.educations.order(to: :desc)

 end

 def not_found
  # random_post_id = rand(1..Post.last.id)
  # @categories = Category.all
  # # @post = Post.find(random_post_id)
  # @post = Post.where("id": 103)
 end
end
