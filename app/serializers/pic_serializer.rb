class PicSerializer < ActiveModel::Serializer
  require 'byebug'
  attributes :id,:images
  def images
    object.images.map do |data|
      # Rails.application.routes.url_helpers.rails_blob_url(data.images,only_path:true)
      # byebug
      url_for(data.images,only_path:true)
    end
  end
end
