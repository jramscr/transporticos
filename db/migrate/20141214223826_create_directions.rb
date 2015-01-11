class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.text :description

      t.timestamps
    end
  end
end
