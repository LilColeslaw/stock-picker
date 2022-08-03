def stock_picker(stocks)
  pick = [0, 1]
  stocks.each_with_index do |stock_buy, index|
    break if index == stocks.length - 1 #don't want to look at the last one because there will be no ahead of it
    stock_sell = stocks.drop(index + 1).find_index(stocks.drop(index + 1).max) + index + 1 
    pick = [index, stock_sell] if stocks[stock_sell] - stock_buy > stocks[pick[1]] - stocks[pick[0]]
  end
  pick
end