class ServicesController < ApplicationController
  before_action :load_service, only: [:show, :edit, :update, :destroy]

  def index
    @servers = Service.all
    @cluster = Monittr::Cluster.new(@servers.map{ |s| s.url })
  end

  def new
    @service = Service.new
  end

  def show
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to '/'
    else
    end
  end

  def edit
    render :new
  end

  def update
  end

  def destroy
    if @service.destroy
      flash[:info] = "Service destroyed"
      redirect_to root_url
    else
      flash[:warning] = "Unable to delete service"
      render :show
    end
  end

  private
  def load_service
    @service = Service.find(params[:id])
    @server = Monittr::Cluster.new([@service.url]).servers.first
  end

  def service_params
    params.require(:service).permit(:ip_address, :port)
  end
end
