class CreateUserFeedbacks < ActiveRecord::Migration
  def change
    create_table :user_feedbacks do |t|
      t.integer :user_id
      t.integer :route_id
      t.integer :rating_id
      t.integer :score

      t.timestamps
    end
  end
end
