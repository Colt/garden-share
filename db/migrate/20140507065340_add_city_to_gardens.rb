class AddCityToGardens < ActiveRecord::Migration
  def change
    add_column :gardens, :city, :string
  end
end
