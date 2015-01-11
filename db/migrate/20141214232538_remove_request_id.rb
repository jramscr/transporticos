class RemoveRequestId < ActiveRecord::Migration
  def change
    remove_column :requests, :id
  end
end
