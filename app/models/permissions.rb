class Permissions < ActiveRecord::Base
  belongs_to :group
  belongs_to :role
end
