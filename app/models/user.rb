class User < ActiveRecord::Base
  belongs_to :garden

  EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true,
                    format:   { with: EmailRegex }
  validates :description, presence: true 
end
