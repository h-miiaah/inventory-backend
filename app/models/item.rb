class Item < ApplicationRecord
    belongs_to :box

    validates :description, :style, :color, :size, :quantity, :image_url, :kind, presence: true
end
