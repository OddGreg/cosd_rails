class Category < ActiveRecord::Base
  belongs_to :book
  has_many :sections
  has_one :genre
  has_and_belongs_to_many :groups
end
