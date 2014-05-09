class Garden < ActiveRecord::Base
  has_many :users

  validates :address, presence: true
  validates :city, presence: true
  validates :short_description, presence: true
  validates :description, presence: true
  validates :rules, presence: true

  has_attached_file :photo, :styles => { :medium => "300x300#", :thumb => "200x200#" }, :default_url => "/images/:style/succulent.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

end
