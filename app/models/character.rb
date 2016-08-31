class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  has_and_belongs_to_many :posts
  validates_formatting_of :avatar, using: :url
end
