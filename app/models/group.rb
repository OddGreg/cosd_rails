class Group < ActiveRecord::Base
  has_many :permissions
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :users
end
