class Request < ActiveRecord::Base
  belongs_to :user

  has_many :directions
  accepts_nested_attributes_for :directions
end
