def stock_picker(prices)
    prices.each_with_index do |price, day|
        profit = price - prices[0]
        puts "Day #{day}: #{price} - Day 0: #{prices[0]} = #{profit}"
    end
end



stock_picker([17,3,6,9,15,8,6,1,10])