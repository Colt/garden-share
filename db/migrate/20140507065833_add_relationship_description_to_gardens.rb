class AddRelationshipDescriptionToGardens < ActiveRecord::Migration
  def change
    add_column :gardens, :relationship_desription, :string
  end
end
