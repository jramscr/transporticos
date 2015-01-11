class RemoveRequestRefFromUser < ActiveRecord::Migration
  def change
    remove_reference :users, :request, index: true
  end
end
