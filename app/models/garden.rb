class Garden < ActiveRecord::Base
  validates :location, presence: true
  validates :description, presence: true
end
