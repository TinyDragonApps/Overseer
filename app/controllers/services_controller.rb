class ServicesController < ApplicationController
  def index
    @cluster = Monittr::Cluster.new(['http://localhost:2812'])
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
