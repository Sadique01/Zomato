# frozen_string_literal: true

class CartItemSerializer < ActiveModel::Serializers
  attributes :id

  has_many :dishes
end
