class Service < ActiveRecord::Base

  def url
    "http://#{ip_address}:#{port}/"
  end

end
