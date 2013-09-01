class MealFood < ActiveRecord::Base
  attr_accessible :meal_id, :title
  
  validates :title, :presence => true
  
  belongs_to :meal, :foreign_key => :meal_id
  has_one :user, :through => :meal
end
