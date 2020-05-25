class AddColumnUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :lastname, :string
    add_column :users, :username, :string
    add_column :users, :address, :text
    add_column :users, :zip_code, :integer
    add_column :users, :country, :string
    add_column :users, :phone, :integer
  end
end
