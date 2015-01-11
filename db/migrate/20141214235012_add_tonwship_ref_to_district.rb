class AddTonwshipRefToDistrict < ActiveRecord::Migration
  def change
    add_reference :districts, :tonwship, index: true
  end
end
