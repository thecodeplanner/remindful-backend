class CreateSelfcares < ActiveRecord::Migration[6.1]
  def change
    create_table :selfcares do |t|
      t.text :description
      t.boolean :complete
      t.integer :day_id

      t.timestamps
    end
  end
end
