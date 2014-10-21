class Service < ActiveRecord::Base

  def url
    if username.nil?
      "http://#{ip_address}:#{port}/"
    else
      "http://#{username}:#{password}@#{ip_address}:#{port}/"
    end
  end

end
