class Product < ApplicationRecord
  def products_list
    products.split(", ")
  end 

  def sale_message
    if price.to_f < 9
      return "Discount Item!"
    else 
      return  "Everyday Value!"
    end
  end

  def tax
    price.to_f * 0.09
  end

  def total
    price.to_f + tax
  end
end
