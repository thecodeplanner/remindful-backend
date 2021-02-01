class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.date :date
      t.text :entry
      t.string :mood
      t.integer :water_intake
      t.integer :user_id

      t.timestamps
    end
  end
end
