class CreateConcerns < ActiveRecord::Migration[5.1]
  def change
    create_table :concerns do |t|
      t.string :name
      t.text :description
      t.string :example_photo

      t.timestamps
    end
  end
end
