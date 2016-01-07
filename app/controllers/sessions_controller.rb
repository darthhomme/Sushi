class SessionsController < ApplicationController
  def create
    server = Server.find_by(:name => params[:server_name])
    if server && server.authenticate(params[:password])
      session[:server_id] = server.id
      redirect_to orders_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:server_id] = nil
    redirect_to root_path
  end

end
