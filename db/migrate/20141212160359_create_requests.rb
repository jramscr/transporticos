class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.date :pick_date
      t.date :deliver_date
      t.text :pick_direction
      t.text :deliver_direction
      t.integer :budget

      t.timestamps
    end
  end
end
