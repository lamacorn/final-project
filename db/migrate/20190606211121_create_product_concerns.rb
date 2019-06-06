class CreateProductConcerns < ActiveRecord::Migration[5.1]
  def change
    create_table :product_concerns do |t|
      t.integer :concern_id
      t.integer :product_id
      t.boolean :good_for

      t.timestamps
    end
  end
end
