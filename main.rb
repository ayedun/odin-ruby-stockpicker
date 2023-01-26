

def stock_picker (array)
    best_profit = 0
    best_buyIndex= nil
    best_sellIndex = nil
    array.each_with_index do |buy, buyIndex|
        array.each_with_index do |sell, sellIndex|
            currentProfit = array[sellIndex] - array[buyIndex]
            if currentProfit > best_profit && sellIndex> buyIndex
                best_profit = currentProfit
                best_buyIndex = buyIndex
                best_sellIndex = sellIndex
            end
        end
    end
    puts "Best Profit: #{best_profit} \nBest Buy Date: #{best_buyIndex} \nBest Sell Date: #{best_sellIndex}"
end



stock_picker([17,3,6,9,15,8,6,1,10])