class Product < ApplicationRecord

  def is_discounted?

    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end

  def description_length
    if description.length > 5
      return true
    end
  end
  
end






# • Create a model method called is_discounted? that returns true if an item is under $10 and false otherwise.
# • Create a model method called tax which will return the tax that would be charged for a particular product. 
# (Assume a 9% tax rate.)
# • Create a model method called total which will return the sum of the price + tax.