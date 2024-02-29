class HashData
  def input_data_hash(data)
    menu = data.map do |item, details|
      flavors_text = format_flavors(details[:flavors])
      flavors_text += " #{item.to_s}"
      gluten_text = format_gluten(details)
      veg_text = format_veg(details)
      menu = "- " + flavors_text + gluten_text + veg_text
    end
  output = "Menu:\n" + menu.join("\n")
  end

  private

  def format_gluten(details)
   if  details[:gluten_free] == false
    " (non gluten free)"
   elsif  details[:gluten_free] == true
    " (gluten free)"
   end 
  end

  def format_veg(details)
    if details[:veg] == false
      " (non-veg)"
    elsif details[:veg] == true
      " (veg)"
    end
  end

  def format_flavors(flavors)
    return flavors[0] if flavors.length == 1
    "#{flavors[0...-1].join(', ')}, and #{flavors.last}"
  end
end
