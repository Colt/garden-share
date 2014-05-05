class CreateGardens < ActiveRecord::Migration
  def change
    create_table :gardens do |t|
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
