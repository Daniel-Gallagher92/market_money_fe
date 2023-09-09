class MarketFacade 
  def self.get_markets
    MarketService.get_markets[:data].map do |market_data|
      Market.new(market_data)
    end
  end

  def self.get_market(id)
    market_data = MarketService.get_market(id)
    Market.new(market_data[:data])
  end

  def self.get_vendors(id)
    MarketService.get_vendors(id)[:data].map do |vendor_data|
      Vendor.new(vendor_data)
    end
  end

  def self.get_vendor(id)
    vendor_data = MarketService.get_vendor(id)[:data]
    Vendor.new(vendor_data)
  end

  # def self.get_vendor_items(id)
  #   MarketService.get_vendor_items(id).map do |item_data|
  #     Item.new(item_data)
  #   end
  # end

  # def self.get_item(id)
  #   item_data = MarketService.get_item(id)
  #   Item.new(item_data)
  # end

  # def self.get_item_vendors(id)
  #   MarketService.get_item_vendors(id).map do |vendor_data|
  #     Vendor.new(vendor_data)
  #   end
  # end

  # def self.get_item_vendor(id)
  #   vendor_data = MarketService.get_item_vendor(id)
  #   Vendor.new(vendor_data)
  # end

  # def self.get_item_vendor_items(id)
  #   MarketService.get_item_vendor_items(id).map do |item_data|
  #     Item.new(item_data)
  #   end
  # end
end