class PicsController < ApplicationController
    protect_from_forgery
  def create
    pic = Pic.create(pic_params)
    # pic.images.attach(params[:images])
    render json: pic, status: 200

  end

  def show
    pic = Pic.find(1)
    render json: url_for(pic.images)
  end

  def pic_params
    params.require(param_key).permit(:text,images:[])
  end
end
