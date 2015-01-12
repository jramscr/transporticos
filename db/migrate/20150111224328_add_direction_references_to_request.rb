class AddDirectionReferencesToRequest < ActiveRecord::Migration
  def self.up
    add_reference :requests, :direction_to_pick, type: Direction, index: true
    add_reference :requests, :direction_to_deliver, type: Direction, index: true
  end

  def self.down
    remove_reference :requests, :direction_to_pick
    remove_reference :requests, :direction_to_deliver
  end
end
