require 'pry-byebug' 


def stock_picker(price_list)
  working_list = Array.new
  working_list << price_list
  working_list.flatten!
  sales = Hash.new(0)

  price_list.each_with_index do |price, index|
    best_sale = 0
    best_sale_index = []
    working_list.shift
    working_list.each_with_index do |w_price,w_index|
      if (w_price - price) > best_sale
        best_sale = (w_price - price)
        best_sale_index = [index, price_list.index(w_price)]
      end
    end
    sales[best_sale] = best_sale_index
  end
  sales[sales.keys.max]
end

stock_picker([250,12,85,55,12,15,2])