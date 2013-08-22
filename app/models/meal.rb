class Meal < ActiveRecord::Base
  attr_accessible :title, :user_id
  
  validates :title, :presence => true
  
  #belongs_to :user
  has_many :meal_foods, :foreign_key => :meal_id
end
