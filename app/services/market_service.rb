class MarketService 

  def self.conn 
    Faraday.new(url: "http://[::1]:3000")
  end

  def self.get_markets 
    response = conn.get("/api/v0/markets")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_market(id)
    response = conn.get("/api/v0/markets/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_vendors(id)
    response = conn.get("/api/v0/markets/#{id}/vendors")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_vendor(id)
    response = conn.get("/api/v0/vendors/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end
end