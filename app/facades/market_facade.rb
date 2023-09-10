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
end