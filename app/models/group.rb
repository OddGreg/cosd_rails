class Group < ActiveRecord::Base
  has_many :permissions
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :users
  has_and_belongs_to_many :characters
  validates_formatting_of :image, using: :url
end
