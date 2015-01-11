class Direction < ActiveRecord::Base
  has_one :province
  has_one :township
  has_one :district
end
