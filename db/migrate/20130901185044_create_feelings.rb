class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.text :description
      t.integer :meal_id

      t.timestamps
    end
  end
end
