class Section < ActiveRecord::Base
  belongs_to :category
  has_many :stories
  validates_formatting_of :image, using: :url
end
