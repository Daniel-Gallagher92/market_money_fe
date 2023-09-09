class Vendor 
attr_reader :name,
            :description,
            :contact_phone,
            :contact_name,
            :credit_accepted,
            :id
            
  def initialize(data) 
    @id = data[:id]
    @name = data[:attributes][:name]
    @description = data[:attributes][:description]
    @contact_phone = data[:attributes][:contact_phone]
    @contact_name = data[:attributes][:contact_name]
    @credit_accepted = data[:attributes][:credit_accepted]
  end
end