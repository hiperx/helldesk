class SessionController < ApplicationController
  skip_before_action :authorize, :only => [:new, :create]
  def new
  end

  def create
    if u=User.authenticate(params[:name], params[:password])
      session[:user_id] = u.id
      redirect_to start_url
    else
      flash[:alert] = "Please try again"
      redirect_to login_url
      #redirect_to(controller: 'session', actions: 'new') inna twarda metoda
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:alert] = "You have been logout"
    redirect_to login_url
    #redirect_to(controller: 'session', actions: 'new') inna twarda metoda
  end
end
