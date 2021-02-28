class BoxSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount

  has_many :items
end
