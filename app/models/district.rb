class District < ActiveRecord::Base
  belongs_to :direction
  belongs_to :township
end
