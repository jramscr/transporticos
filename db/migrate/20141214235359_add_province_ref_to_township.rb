class AddProvinceRefToTownship < ActiveRecord::Migration
  def change
    add_reference :townships, :province, index: true
  end
end
