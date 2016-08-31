class UserIp < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :ip_address, using: :ip_address_v4
end
