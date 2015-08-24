class JobApplicationsController < ApplicationController

  def new
  	find_job
  	@job_application = JobApplication.new
  end

  def create
  	@job_application = JobApplication.new(job_application_params)
  	if @job_application.save
      flash[:notice] = "Application submission was successful."
  		redirect_to({:controller => 'jobs', :action => 'index'})
  	else
  		render('create')
  	end
  end

  private 

  def job_application_params
    params.require(:job_application).permit(:name, :email, :phone, :job_id, :resume, :letter) 
  end

  def find_job
  	if params[:job_id]
  		@job = Job.find(params[:job_id])
  	end
  end

end
