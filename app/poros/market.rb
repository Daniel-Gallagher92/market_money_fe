class Market 
  attr_reader :name,
              :street,
              :city,
              :state,
              :zip
              
  def initialize(data) 
    @name = data[:attributes][:name]
    @street = data[:attributes][:street]
    @city = data[:attributes][:city]
    @state = data[:attributes][:state]
    @zip = data[:attributes][:zip]
  end
end