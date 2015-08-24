class CreateJobApplications < ActiveRecord::Migration
  def up
    create_table :job_applications do |t|
    	t.text :name
    	t.text :email
    	t.text :phone
      t.timestamps null: false
    end
  end
  def down
  	drop_table :job_applications
  end
end
