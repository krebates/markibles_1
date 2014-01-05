class Rating < ActiveRecord::Base

validates_presence_of :overall_rating
validates_presence_of :flavor
validates_presence_of :presentation
validates_presence_of :timeliness_of_delivery
belongs_to :user
belongs_to :seller
belongs_to :product

belongs_to :ratable , :polymorphic => true, dependent: :destroy


end
