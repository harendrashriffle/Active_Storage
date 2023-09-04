class PicsController < ApplicationController
  protect_from_forgery
  def create
    pic = Pic.create(pic_params)
    render json: pic
  end

  def show
    pic = Pic.find(params[:id])
    render json: pic
  end

  def pic_params
    params.permit(images:[])
  end
end
