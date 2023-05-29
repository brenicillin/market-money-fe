class Market
  attr_reader :id,
              :name,
              :street,
              :city,
              :county,
              :state,
              :zip

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @street = data[:attributes][:street]
    @city = data[:attributes][:city]
    @county = data[:attributes][:county]
    @state = data[:attributes][:state]
    @zip = data[:attributes][:zip]
    @vendors = data[:relationships][:vendors][:data]
  end
end