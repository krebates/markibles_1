class User < ActiveRecord::Base

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :dob
  has_many :ratings
  has_one :seller
end
