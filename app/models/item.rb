class Item < ApplicationRecord
    belongs_to :box

    validates :description, :style, :color, :size, :quantity, :image_url, :kind, presence: true
    validates_inclusion_of :kind, :in => ['add', 'remove']
end


=begin
    
1. The Item model inherits from ApplicationRecord, which is the base class for all models in Rails.
2. The Item model has a belongs_to association with the Box model.
3. The Item model has a validates presence of association with the description, style, color, size, quantity, image_url, and kind attributes.
4. The Item model has a validates_inclusion_of association with the kind attribute.
    
=end