class ChangeToDateTimeTheDateFieldsInRequest < ActiveRecord::Migration
  def self.up
    change_table :requests do |t|
      t.change :pick_date, :datetime
      t.change :deliver_date, :datetime
    end
  end
  def self.down
    change_table :requests do |t|
      t.change :pick_date, :date
      t.change :deliver_date, :date
    end
  end
end
