class Job < ActiveRecord::Base
	has_many :job_applications
	has_many :admin_user_job_edits
	has_many :admin_users, :through => :admin_user_job_edits
end
