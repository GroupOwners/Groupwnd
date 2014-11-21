class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :keep_link_back_url, only: [:new]

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = sign_up(user_params)

    if @user.valid?
      sign_in(@user)
      redirect_to session[:link_back]
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

  def keep_link_back_url
    session[:link_back] = request.referer
  end
end

