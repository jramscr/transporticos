class Direction < ActiveRecord::Base
  belongs_to :request

  has_one :province
  has_one :township
  has_one :district
end
