class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :photo
      t.date :birthday
      t.string :address_street
      t.string :address_city
      t.string :address_state
      t.string :address_zipcode
      t.text :notes
      t.boolean :optin_email
      t.boolean :optin_texts
      t.string :phone

      t.timestamps
    end
  end
end
