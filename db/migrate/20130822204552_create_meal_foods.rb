class CreateMealFoods < ActiveRecord::Migration
  def change
    create_table :meal_foods do |t|
      t.string :title
      t.integer :meal_id, :null => false

      t.timestamps
    end
  end
end
