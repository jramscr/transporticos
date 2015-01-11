class RemoveDirectionsInUser < ActiveRecord::Migration
  def change
    remove_column :requests , :pick_direction
    remove_column :requests , :deliver_direction
  end
end
