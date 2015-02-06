class AddColumnsDepartureArrivalDirectionToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :departure_direction, :text
    add_column :requests, :arrival_direction, :text
  end
end
