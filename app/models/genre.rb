class Genre < ActiveRecord::Base
  belongs_to :category
  belongs_to :story
  validates_formatting_of :image, using: :url
end
