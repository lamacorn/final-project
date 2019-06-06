class CreateUsefrequencies < ActiveRecord::Migration[5.1]
  def change
    create_table :usefrequencies do |t|
      t.string :description

      t.timestamps
    end
  end
end
