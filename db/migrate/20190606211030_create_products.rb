class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :category_id
      t.float :average_price
      t.string :product_image
      t.string :purchase_link

      t.timestamps
    end
  end
end
