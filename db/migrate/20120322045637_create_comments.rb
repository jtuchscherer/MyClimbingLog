class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :route_id
      t.text :content
      t.string :title
      t.string :ip_address

      t.timestamps
    end
  end
end
