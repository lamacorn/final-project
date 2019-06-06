class CreateRoutineProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :routine_products do |t|
      t.integer :routine_id
      t.integer :product_id
      t.integer :use_frequency_id
      t.text :note

      t.timestamps
    end
  end
end
