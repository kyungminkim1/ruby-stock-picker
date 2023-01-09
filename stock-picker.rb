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
    highest_profit = nil
    buying_price_index = nil
    selling_price_index = nil
    # exclude last day to reserve for selling day
    for buying_i in 0...stock_prices.length - 1 do
        # exclude days before buying day
        for selling_i in buying_i + 1...stock_prices.length do
            profit = stock_prices[selling_i] - stock_prices[buying_i]
            if highest_profit == nil || highest_profit < profit
                highest_profit = profit
                buying_price_index = buying_i
                selling_price_index = selling_i
            end
        end
    end

    puts "profit of $#{stock_prices[selling_price_index]} - $#{stock_prices[buying_price_index]} = \
$#{stock_prices[selling_price_index] - stock_prices[buying_price_index]}"
    return [buying_price_index, selling_price_index]
end

buy_and_sell_index = stock_picker([17,3,6,9,15,8,6,1,10])
p buy_and_sell_index
