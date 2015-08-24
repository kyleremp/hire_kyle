class AdminUser < ActiveRecord::Base
	has_secure_password
	has_many :admin_user_job_edits
	has_many :jobs, :through => :admin_user_job_edits
end
