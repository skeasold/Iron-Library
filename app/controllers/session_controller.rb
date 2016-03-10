class SessionController < ApplicationController
  def new
  end

  def create
    email = params[:email]
    password = params[:password]
    @user = User.find_by email: email
    if @user.password == password
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Welcome #{@user.first_name}!"
    else
      render :new
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to login_path, alert: "You have been logged out."
  end
end
