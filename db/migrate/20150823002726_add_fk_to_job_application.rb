class AddFkToJobApplication < ActiveRecord::Migration
  def change
  	add_column(:job_applications, :job_id, :integer)
  	add_index(:job_applications, :job_id)
  end
end
