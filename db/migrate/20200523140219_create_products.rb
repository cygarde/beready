class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :state
      t.integer :unit_price
      t.string :category
      t.string :city
      t.integer :user_id

      t.timestamps
    end
  end
end
