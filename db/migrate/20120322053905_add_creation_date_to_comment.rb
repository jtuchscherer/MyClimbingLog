class AddCreationDateToComment < ActiveRecord::Migration
  def up
    add_column :comments, :creation_date, :timestamp
  end

  def down
    remove_column :comments, :creation_date
  end
end
