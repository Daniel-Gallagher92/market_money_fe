class MarketService 

  def self.conn 
    Faraday.new(url: "http://[::1]:3000")
  end

  # def self.get_url(url)
  #   response = conn.get(url)
  #   JSON.parse(response.body, symbolize_names: true)
  # end

  def self.get_markets 
    response = conn.get("/api/v0/markets")
    JSON.parse(response.body, symbolize_names: true)
  end
end