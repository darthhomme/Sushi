class SessionsController < ApplicationController

def index
  @server = Server.find_by_server_name
end

    def create
      server = Server.find_by_server_name(params[:server_name])
      if server && server.authenticate(params[:password])
        session[:server_id] = server.id
        redirect_to orders_path
      else
        redirect_to log_in_path
      end
    end

    def destroy
      session[:server_id] = nil
      redirect_to log_in_path
    end

end
