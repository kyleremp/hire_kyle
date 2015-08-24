class AddIndexToAdminUser < ActiveRecord::Migration
  def change
  	add_index("admin_users", "username")
  end
end
