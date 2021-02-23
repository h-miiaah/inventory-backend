class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer, :box_id
      t.string, :description
      t.string, :style
      t.string, :color
      t.string, :size
      t.integer, :quantity
      t.string, :image_url
      t.string :kind

      t.timestamps
    end
  end
end
