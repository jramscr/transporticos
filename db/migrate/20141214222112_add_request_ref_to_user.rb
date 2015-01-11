class AddRequestRefToUser < ActiveRecord::Migration
  def change
    add_reference :users, :request, index: true
  end
end
