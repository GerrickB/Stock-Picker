def stock_picker(prices)
    daily_profit = Hash.new(0)
    buy_day = 0
    day_adjust = 0

    until prices.eql?([]) do
        prices.each_with_index do |price, day|
            profit = price - prices[0]
            #puts "Day #{day + day_adjust}: #{price} - Day #{buy_day}: #{prices[0]} = #{profit}"
            daily_profit[[buy_day, day + day_adjust]] = profit
        end
        buy_day += 1
        day_adjust += 1
        #use shift and prices[0] to skip bought days
        prices.shift
    end
    print daily_profit.key(daily_profit.values.max)
end



stock_picker([17,3,6,9,15,8,6,1,10])
#hasha = stock_picker([17,3,6,9,15,8,6,1,10])
#print hasha.key(hasha.values.max)