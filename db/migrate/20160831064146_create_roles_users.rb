class CreateRolesUsers < ActiveRecord::Migration
  def change
    create_table :roles_users do |t|
      t.belongs_to :role, index: true
      t.belongs_to :user, index: true
    end
  end
end
