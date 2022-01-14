def stock_picker(prices)
  max_profit = 0
  maximum_idx = 0
  minimum_idx = 0
  prices.each_with_index do |price, idx|
    prices.each_with_index do |inner_price, inner_idx|
      if idx < inner_idx
        profit = inner_price - price
        if profit > max_profit
          max_profit = profit
          maximum_idx = inner_idx
          minimum_idx = idx
        end
      end
    end
end
    [minimum_idx, maximum_idx]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
