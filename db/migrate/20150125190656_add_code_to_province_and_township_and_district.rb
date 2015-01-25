class AddCodeToProvinceAndTownshipAndDistrict < ActiveRecord::Migration
  def change
    add_column :provinces, :code, :integer
    add_column :townships, :code, :integer
    add_column :districts, :code, :integer
  end
end
