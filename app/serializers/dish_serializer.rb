# frozen_string_literal: true

class DishSerializer < ActiveModel::Serializers
  attributes :id, :name, :price, :dish_type, :image

  # def images
  #   object.images.map do |data|
  #     data.url
  #   end
  # end

  def image
    object.image.url
  end
end
