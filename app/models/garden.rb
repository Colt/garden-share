class Garden < ActiveRecord::Base
  has_many :users
  validates :location, presence: true
  validates :description, presence: true
end
