class Role < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :permissions
  validates_formatting_of :image, using: :url
end
