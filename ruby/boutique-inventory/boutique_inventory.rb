class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    names = []
    @items.map { |item|
      names.push item[:name]
    }
    names.sort
  end

  def cheap
    cheaps = []
    @items.each do |item|
      if item[:price] < 30
        cheaps.push(item)
      end
    end
    cheaps
  end

  def out_of_stock
    empty_items = []
    @items.each do |item|
      if item[:quantity_by_size].empty?
        empty_items.push item
      end
    end
    empty_items
  end

  def stock_for_item(name)
    @items.each do |item|
      if item[:name] == name
        return item[:quantity_by_size]
      end
    end
  end

  def total_stock
    sum = 0
    @items.each do |item|
      item[:quantity_by_size].map do |info|
        sum += info[1]
      end
    end
    return sum
  end

  private
  attr_reader :items
end
