class AddGardenIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :garden, index: true
  end
end
