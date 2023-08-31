class UsersController < ApplicationController
  def create
    user = User.create(user_params)
    render json: user
  end

  def show
    user = User.find(14)
    render json: url_for(user.image)
  end

  def user_params
    params.permit(:image)
  end
end
