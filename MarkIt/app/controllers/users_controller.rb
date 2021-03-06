class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  def show
    @user = User.find(params[:id])
    @listings = @user.listings.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to MarkIt!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def user_params
      params.require(:user).permit(:firstname, :lastname, :username, :email, :password, :password_confirmation)
    end
end
