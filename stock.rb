def stock_picker(prices)
    total_days = prices.length
    daily_profit = Hash.new(0)
    #8.times do
        prices.each_with_index do |price, day|
            profit = price - prices[0]
            puts "Day #{day}: #{price} - Day 0: #{prices[0]} = #{profit}"
            daily_profit[[0,day]] = profit
        end
    #end
    daily_profit
end



puts stock_picker([17,3,6,9,15,8,6,1,10])
#use Hash.new
#number of days.times