class UsersController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index

  end

  def new

  end

  def create

  end

  def show

  end

private
  def user_params
    params.require(:user).permit(:id, :email, :password, :password_confirmation)
  end
end
