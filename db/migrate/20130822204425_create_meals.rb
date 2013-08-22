class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :title
      t.integer :user_id, :null => false

      t.timestamps
    end
  end
end
