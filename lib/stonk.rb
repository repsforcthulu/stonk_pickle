# takes array of "prices" with the days starting at zero(index).
# the method picks the best buy and sell period for profit.
# <u>you MUST buy before you can sell<u>



class Pickle
  def pick(array)
    profit = 0
    out = []
    array.each_index do |day|
      update = array[day..-1]
      update.each_with_index do |buy, uday| #each day, runs thru all
        sell = update.sort.max
        if update.index(sell) < uday
          update.delete(sell)
        else
          if sell - buy > profit
            profit = sell - buy
            out = [array.index(buy), array.index(sell)]
          end
        end
      end
    end
    return out
  end
end

#Pickle.new.pick([30,15,20,2,4,10,15,12]) bug where it does the right thing
# but chooses the first index of number occurence not the correct one. ie 15 should
#be index 6 not 1
