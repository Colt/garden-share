class CreateGardens < ActiveRecord::Migration
  def change
    create_table :gardens do |t|
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :zipcode
      t.string :geo_location
      t.text :description
      t.text :rules

      t.timestamps
    end
  end
end
