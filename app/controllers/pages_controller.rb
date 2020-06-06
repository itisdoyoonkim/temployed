class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:about, :home]

  def about
  end

  def home
  end

  def my_account
    @educations = current_user.educations
    @experiences = current_user.experiences
  end

 def all_users
    @users = User.all
 end 

 def single_user
  @user = User.find(params[:id])
 end
end
