# frozen_string_literal: true

class OrderSerializer < ActiveModel::Serializers
  attributes :id, :name, :shipping_address, :created_at

  has_many :order_items, serializer: OrderitemsSerializer
end
