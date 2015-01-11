class AddDistrictRefToDirection < ActiveRecord::Migration
  def change
    add_reference :directions, :district, index: true
  end
end
