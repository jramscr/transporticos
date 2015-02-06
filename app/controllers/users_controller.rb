class UsersController < ApplicationController
  helper UserHelper

  before_action :find_user, only: [:show]
  before_action :carriers, only: [:index]

  def index
    @users = User.order(:email).page params[:page]
  end

  def show; end

  def edit
    @user = current_user
  end

  def update
    if @user.update(request_params)
      redirect_to user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end

  def find_user
    @user = User.find(params[:id])
  end

  def carriers
    @carriers = User.all.where(carrier: true)
  end
end
