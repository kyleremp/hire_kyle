class JobApplication < ActiveRecord::Base
	belongs_to :job
	has_attached_file :resume
	validates_attachment :resume, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
	has_attached_file :letter
	validates_attachment :letter, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)} 
end
