# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializers
  attributes :id, :name, :email, :type, :image

  def image
    object.image.url
  end
end
