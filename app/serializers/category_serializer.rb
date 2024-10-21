# frozen_string_literal: true

class CategorySerializer < ActiveModel::Serializers
  attributes :id, :name
  has_many :dishes

  belongs_to :dishes
end
