class Category < ActiveRecord::Base
  belongs_to :book
  has_many :sections
end
