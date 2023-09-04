class UsersController < ApplicationController
  protect_from_forgery

  # def index
  #   render json: User.all
  # end
  def create
    user = User.create(user_params)
    render json: user
  end

  def show
    user = User.last
    # user.image.representation(resize_to_limit: [100,100])
    # render json: url_for(user.image)
    render json: rails_storage_proxy_path(user.image)

  end

  def download
    binary = User.last.image.download
    render json: binary
  end

  def destroy
    User.find(params[:id]).image.purge
    render json: {message: "File deleted successfully"}
  end

  def user_params
    params.permit(:image)
  end
end
