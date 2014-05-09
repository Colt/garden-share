class RenameLocationToAddressInGardens < ActiveRecord::Migration
  def change
    rename_column :gardens, :location, :address
  end
end
