require 'pry-byebug' 


def stock_picker(price_list)
  working_list = price_list
  sales = Hash.new(0)

  price_list.each_with_index do |price, index|
    best_sale = 0
    best_sale_index = []
    working_list.shift
    working_list.each_with_index do |w_price,w_index|
      if (w_price - price) > best_sale
        best_sale = (w_price - price)
        binding.pry
        best_sale_index = [index, w_index + 1]
      end
    end
    sales[best_sale] = best_sale_index
  end
  sales
end

stock_picker([17,3,6,9,15,8,6,1,10])