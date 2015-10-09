#!/usr/bin/env ruby

def stock_picker(arr)
    max = 0; max_arr = Array.new
    arr.each_with_index do |buy_price, buy_idx|
        if buy_idx < arr.length - 1
            ((buy_idx + 1)...arr.length).each do |sell_idx|
                prof = arr[sell_idx] - buy_price
                if prof > max
                    max = prof
                    max_arr = [buy_idx, sell_idx]
                end
            end
        end
    end
    max_arr
end

p stock_picker([17,3,6,9,15,8,6,1,10]) #=> [1,4] 
