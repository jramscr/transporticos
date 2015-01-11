class AddProvinceRefToDirection < ActiveRecord::Migration
  def change
    add_reference :directions, :province, index: true
  end
end
