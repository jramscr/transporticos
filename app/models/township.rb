class Township < ActiveRecord::Base
  belongs_to :direction
  belongs_to :province
  has_many :districts
end
