class AddTownshipRefToDistrict < ActiveRecord::Migration
  def change
    add_reference :districts, :township, index: true
  end
end
