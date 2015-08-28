class JobsController < ApplicationController

  # before_action :confirm_logged_in, :except => [:index]

  def index
  	@jobs = Job.all
  	render('index')
  end

  def new
  	@job = Job.new()
  end

  def create
  	@job = Job.new(job_params)
  	if @job.save
  		redirect_to(:action => 'manage_jobs')
      flash[:notice] = "Job saved successfully!"
  	else
  		render('create')
  	end
  end

  def manage_jobs
    @jobs = Job.all
    render('manage')
  end

  def edit
    @job = Job.find_by_id(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(job_params)
      flash[:notice] = "Record was successfully updated."
      redirect_to(:action => 'manage')
    else
      flash[:notice] = "There was an issue when trying to update your record."
      render('edit')
    end
  end

  def candidates
    @job = Job.find(params[:id])
    @candidates = @job.job_applications
  end

  private

  def job_params
  	params.require(:job).permit(:title, :description)
  end

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = 'Please log in.'
      redirect_to({:controller => 'access', :action => 'login'})
      return false
    else
      return true
    end
  end

end
