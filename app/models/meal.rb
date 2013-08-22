class Meal < ActiveRecord::Base
  attr_accessible :title, :user_id
  
  validates :title, :presence => true
  
  #belongs_to :user
  has_many :meal_foods, :foreign_key => :meal_id
  
  def date
    self.created_at.to_s.split(" ").first
  end
end
