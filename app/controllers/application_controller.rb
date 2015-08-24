class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  #sample linking to before_action in jobs_controller
  # def check_permission!
	#   redirect_to "/", notice: 'You dont have enough permissions to be here' unless current_admin || current_company
	# end
	
end
