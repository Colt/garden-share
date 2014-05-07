class User < ActiveRecord::Base
  belongs_to :garden

  has_secure_password
  
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    format:   { with: VALID_EMAIL_REGEX }
  validates :password, length: { minimum: 6 }
#  validates :description, presence: true

private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
