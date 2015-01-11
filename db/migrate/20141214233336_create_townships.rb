class CreateTownships < ActiveRecord::Migration
  def change
    create_table :townships do |t|
      t.string :name
    end
  end
end
