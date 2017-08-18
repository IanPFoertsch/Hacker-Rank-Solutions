def verifyItems(origItems, origPrices, items, prices)
  original_prices = build_hash(origItems, origPrices)
  new_prices = build_hash(items, prices)

  num_differences = 0

  new_prices.each do |item, price|
    if original_prices[item] != price
      num_differences += 1
    end
  end

  num_differences
end

def build_hash(items, prices)
  items_to_prices = {}
  items.each_with_index do |item, index|
    items_to_prices[item] = prices[index]
  end

  items_to_prices
end
