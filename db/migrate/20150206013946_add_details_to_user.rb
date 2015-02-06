class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :carrier, :boolean
    add_column :users, :name, :string
    add_column :users, :first_surname, :string
    add_column :users, :second_surname, :string
    add_column :users, :mobile_phone, :integer
  end
end
