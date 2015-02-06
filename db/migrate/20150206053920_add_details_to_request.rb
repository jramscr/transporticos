class AddDetailsToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :state, :string
    add_column :requests, :remaining_time , :time
  end
end
