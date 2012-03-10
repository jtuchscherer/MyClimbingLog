class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :gym_id
      t.integer :ordinal_value
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
