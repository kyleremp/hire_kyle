class CreateAdminUserJobEdits < ActiveRecord::Migration
  def change
    create_table :admin_user_job_edits do |t|
    	t.integer :job_id
    	t.integer :admin_user_id
      t.timestamps null: false
    end
    add_index :admin_user_job_edits, ["admin_user_id", "job_id"]
  end
end
