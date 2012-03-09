class CreateRelationshipBetweenGymAreaAndRoute < ActiveRecord::Migration
  def up
    add_column :areas, :gym_id, :integer
    add_column :routes, :area_id, :integer
  end

  def down
    remove_column :areas, :gym_id
    remove_column :routes, :area_id
  end
end
