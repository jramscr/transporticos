class User < ActiveRecord::Base
  paginates_per 9
  max_paginates_per 9
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :requests
  has_many :notifications
end
