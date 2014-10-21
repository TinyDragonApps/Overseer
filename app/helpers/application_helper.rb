module ApplicationHelper
def time_in_words(seconds)
    case seconds
    when 0..60
      "#{seconds        } seconds"
    when 60..3600
      value = seconds/60
      "#{value} minute#{value > 1 ? 's' : ''}"
    when 3600..86400
      value = seconds/3600
      "#{value} hour#{  value > 1 ? 's' : ''}"
    when 86400..604800
      value = seconds/86400
      "#{value} day#{   value > 1 ? 's' : ''}"
    when 604800..2419200
      value = seconds/604800
      "#{value} week#{  value > 1 ? 's' : ''}"
    else
      nil
    end
  end

  def icon_for_protocol(protocol)
    if protocol =~ /sql/i
      tag('i', class: 'fa fa-database')
    elsif protocol.upcase == "HTTP"
      tag('i', class: 'fa fa-globe')
    else
      ""
    end
  end
end
