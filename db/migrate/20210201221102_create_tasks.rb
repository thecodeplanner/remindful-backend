class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :description
      t.boolean :complete
      t.integer :day_id

      t.timestamps
    end
  end
end
