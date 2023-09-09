class Market 
  attr_reader :id,
              :name,
              :street,
              :city,
              :state,
              :zip

  def initialize(data) 
    @id = data[:id]
    @name = data[:attributes][:name]
    @street = data[:attributes][:street]
    @city = find_city(data)
    @state = data[:attributes][:state]
    @zip = data[:attributes][:zip]
  end

  def find_city(data) 
    if data[:attributes][:city]
      data[:attributes][:city]
    else
      nil
    end
  end
  
end