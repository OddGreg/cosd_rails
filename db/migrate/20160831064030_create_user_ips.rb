class CreateUserIps < ActiveRecord::Migration
  def change
    create_table :user_ips do |t|
      t.string :ip_address
      t.references :user, index: true

      t.timestamps
    end
  end
end
