class ItemSerializer < ActiveModel::Serializer
  attributes :id, :box_id, :description, :style, :color, :size, :quantity, :image_url, :kind
end
