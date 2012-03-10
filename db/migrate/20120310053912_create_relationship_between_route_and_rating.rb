class CreateRelationshipBetweenRouteAndRating < ActiveRecord::Migration
  def up
    add_column :routes, :rating_id, :integer
  end

  def down
    remove_column :routes, :rating_id
  end
end
