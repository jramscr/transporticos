class AddUserRefToRequest < ActiveRecord::Migration
  def self.up
    add_reference :requests, :user, index: true
  end
  def self.down
    remove_reference :requests, :user, index: true
  end
end
