class Product < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :price
  has_many :ratings, as: :ratable
  belongs_to :seller
  validates_numericality_of :price
end
