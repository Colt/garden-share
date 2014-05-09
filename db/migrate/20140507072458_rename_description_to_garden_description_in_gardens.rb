class RenameDescriptionToGardenDescriptionInGardens < ActiveRecord::Migration
  def change
    rename_column :gardens, :description, :garden_description
  end
end
