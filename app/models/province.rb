class Province < ActiveRecord::Base
  belongs_to :direction
  has_many :townships
end
