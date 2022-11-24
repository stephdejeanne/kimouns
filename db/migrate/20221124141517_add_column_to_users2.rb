class AddColumnToUsers2 < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone_number, :integer
    add_column :users, :skills, :string
    add_column :users, :address, :string
    add_column :users, :longitude, :float
    add_column :users, :latitude, :float
    add_column :users, :biography, :text
  end
end
