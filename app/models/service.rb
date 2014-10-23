class Service < ActiveRecord::Base
  belongs_to :user

  def url
    if username.nil?
      "http://#{ip_address}:#{port}/"
    else
      "http://#{username}:#{password}@#{ip_address}:#{port}/"
    end
  end

end
