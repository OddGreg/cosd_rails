class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :story
  has_and_belongs_to_many :characters
  validates_formatting_of :image, using: :url
  validates_formatting_of :poster_ip, using: :ip_address_v4
end
