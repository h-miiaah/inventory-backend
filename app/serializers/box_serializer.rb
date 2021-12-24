class BoxSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount

  has_many :items
end

=begin
  
creates the serialization for the box objects and thier attributes.
  
=end