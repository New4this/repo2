class AddAdminToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :admins, :boolean, :default => false
  end

  def self.down
    remove_column :users, :admin
  end
end
