class ServersController < ApplicationController
  def index
    @servers = Server.all
    @server = Server.new
  end

  def new
    @server = Server.new
  end

  def create
    Server.create(server_params)
    redirect_to orders_path
  end

  def log_in
  end
  def show
    @server = Server.find(params[:id])
    redirect_to orders_path
  end
  private

  def server_params
    params.require(:server).permit(:name, :password)
  end
end
