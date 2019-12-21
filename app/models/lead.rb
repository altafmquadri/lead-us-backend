class Lead < ApplicationRecord
    belongs_to :user
    has_many :calls
    has_many :appointments
    has_one  :sale

    # below is written to test and modify the results from fetching coordinates to be accurate

    # require 'net/http'
    # require 'json'


    # def self.fetch_vector
        
    #     street = '20 W 34th St'
    #     city = 'New York'
    #     state = 'NY'
    #     postalcode = 10001
    #     format = 'json'
    
    #     url = "https://us1.locationiq.com/v1/search.php?key=#{ENV['locationIQ_api_key']}&street=#{street}&city=#{city}&state=#{state}&postalcode=#{postalcode}&format=#{format}"
    #     uri = URI(url)

    #     response = Net::HTTP.get(uri)

    #     response = JSON.parse(response)
    #     response
    # end


end
