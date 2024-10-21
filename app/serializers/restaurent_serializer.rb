# frozen_string_literal: true

class RestaurentSerializer < ActiveModel::Serializers
  attributes :id, :name, :place, :status

  has_many :categories
  # has_many :dishes
end
