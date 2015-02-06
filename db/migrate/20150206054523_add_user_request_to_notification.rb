class AddUserRequestToNotification < ActiveRecord::Migration
  def change
    add_reference :notifications, :user, index: true
    add_reference :notifications, :request, index: true
  end
end
