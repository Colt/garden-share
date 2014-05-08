class AddShortDescriptionToGardens < ActiveRecord::Migration
  def change
    add_column :gardens, :short_description, :string
  end
end
