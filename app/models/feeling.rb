class Feeling < ActiveRecord::Base
  attr_accessible :description, :meal_id
  
  belongs_to :meal
end
