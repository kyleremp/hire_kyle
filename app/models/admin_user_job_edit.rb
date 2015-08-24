class AdminUserJobEdit < ActiveRecord::Base
	belongs_to :admin_user
	belongs_to :job
end
