class AddTownshipRefToDirection < ActiveRecord::Migration
  def change
    add_reference :directions, :township , index: true
  end
end
