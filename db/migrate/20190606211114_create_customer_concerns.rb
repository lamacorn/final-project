class CreateCustomerConcerns < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_concerns do |t|
      t.integer :concern_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
