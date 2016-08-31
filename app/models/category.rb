class Category < ActiveRecord::Base
  belongs_to :book
  has_many :sections
  has_one :genre
end
