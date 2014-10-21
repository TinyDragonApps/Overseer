class ServicesController < ApplicationController
  def index
    @cluster = Monittr::Cluster.new(Service.all.map{ |s| s.url })
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

  def update
  end

  def destroy
  end

  private
  def service_params
    params.require(:service).permit(:ip_address, :port)
  end
end
