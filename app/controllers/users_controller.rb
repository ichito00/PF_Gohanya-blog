class UsersController < ApplicationController
  
  def index
    @users = User.all
    @post = Post.new
  end
  
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @post = Post.new
  end
  
  def edit
    @user = User.find(params[:id])
    if @user == current_user
    else
      redirect_to user_path(current_user.id)
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end
  
  def followings
    user = User.find(params[:id])
    @users = user.following_user
  end

  def followers
    user = User.find(params[:id])
    @users = user.follower_user
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :image_, :introduction)
  end
end
