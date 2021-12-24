class ItemSerializer < ActiveModel::Serializer
  attributes :id, :box_id, :description, :style, :color, :size, :quantity, :image_url, :kind
end

=begin
  
creates the serialization for the item objects and thier attributes.
  
=end