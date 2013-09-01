class Meal < ActiveRecord::Base
  attr_accessible :title, :user_id, :description, :date
  
  validates :title, :presence => true
  
  belongs_to :user
  has_many :meal_foods, :foreign_key => :meal_id, :dependent => :destroy
  has_one :feeling
  
  def meal_date
    if self.date
      self.date.to_s.split(" ").first
    else
      self.created_at.to_s.split(" ").first
    end
  end
end
