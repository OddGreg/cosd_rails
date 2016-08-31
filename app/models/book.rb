class Book < ActiveRecord::Base
  has_many :categories
end
