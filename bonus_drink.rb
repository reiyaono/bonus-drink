class BonusDrink
  GET_BOTTLE_COUNT = 3 
  def self.total_count_for(amount)
    amount = remaining = amount.to_i
    while remaining.div(GET_BOTTLE_COUNT).positive?
      get = remaining.div(GET_BOTTLE_COUNT)
      remaining = get + remaining % GET_BOTTLE_COUNT
      amount += get
    end
    amount
  end
end

p ARGV[0]
p BonusDrink.total_count_for(ARGV[0])
