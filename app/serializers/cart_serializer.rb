# frozen_string_literal: true

class CartSerializer < ActiveModel::Serializers
  attributes :id, :user_id

  has_many :cart_items
  has_many :dishes
end
