def stock_picker(prices)
    total_days = prices.length
    daily_profit = Hash.new(0)
    buy_day = 0
    total_days.times do
        prices.each_with_index do |price, day|
            profit = price - prices[buy_day]
            puts "Day #{day}: #{price} - Day #{buy_day}: #{prices[buy_day]} = #{profit}"
            daily_profit[[buy_day,day]] = profit
        end
        buy_day += 1
    end
    daily_profit
end



puts stock_picker([17,3,6,9,15,8,6,1,10])
#hasha = stock_picker([17,3,6,9,15,8,6,1,10])
#print hasha.max[0]
#use Hash.new
#number of days.times