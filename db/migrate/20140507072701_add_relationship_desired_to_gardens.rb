class AddRelationshipDesiredToGardens < ActiveRecord::Migration
  def change
    add_column :gardens, :relationship_desired, :text
  end
end
