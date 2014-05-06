class User < ActiveRecord::Base
  belongs_to :garden
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :description, presence: true 
end
