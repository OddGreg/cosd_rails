class Story < ActiveRecord::Base
  belongs_to :section
  belongs_to :user
  has_and_belongs_to_many :users
  has_many :posts
end
