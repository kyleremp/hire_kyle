class AccessController < ApplicationController


  def new
    @admin_user = AdminUser.new()
    render('create_again')
  end

  def create
    @admin_user = AdminUser.new(admin_params)
    if @admin_user.save
      flash[:notice] = "Account created. Please login."
      redirect_to({:action => 'login'})
    else
      flash[:notice] = "There was a problem creating your account, please try again."
      render('create')
    end
  end


  def login
		render('login')
	end
		
  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = AdminUser.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      # mark user as logged in
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.username
      flash[:notice] = "You are now logged in."
      redirect_to(:controller => 'access', :action => 'account')
    else
      flash[:notice] = "Invalid username/password combination."
      redirect_to(:action => 'login')
    end
  end

  def logout
    # mark user as logged out
    session[:user_id] = nil
    session[:username] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end

  def account
    @admin_user = AdminUser.where(:username => session[:username]).first
  end

  private

  def admin_params
    params.require(:admin_user).permit(:name, :username, :email, :password)
  end

end
