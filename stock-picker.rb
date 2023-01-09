# function stock_picker takes one argument: stock_prices (array)
    # create variable to save highest_profit,
    # and index of selling price and buying price
    # loop through stock_prices excluding the last element
    # (buying price):
        # loop through stock_prices excluding elements
        # before parent loop's current index (selling price):
            # check if selling price - buying price is
            # greater than current highest profit
                # save index of selling price and buying price
        
    # return index of selling price and buying price as array

def stock_picker(stock_prices)
    lowest_price = nil
    lowest_price_index = nil
    for i in 0...stock_prices.length - 1 do
        if lowest_price == nil || lowest_price > stock_prices[i]
            lowest_price = stock_prices[i]
            lowest_price_index = i
        end
    end
    highest_price = nil
    highest_price_index = nil
    for i in lowest_price_index...stock_prices.length do
        if highest_price == nil || highest_price < stock_prices[i]
            highest_price = stock_prices[i]
            highest_price_index = i
        end
    end
    puts "profit of $#{highest_price} - $#{lowest_price}
     = $#{highest_price - lowest_price}"
    return [lowest_price_index, highest_price_index]
end

buy_and_sell_index = stock_picker([17,3,6,9,15,8,6,1,10])
p buy_and_sell_index