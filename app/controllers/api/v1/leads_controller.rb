class Api::V1::LeadsController < ApplicationController

    require 'net/http'
    require 'json'

    def fetch_vector(params, vector)
        
        street = params[:street]
        city = params[:city]
        state = params[:state]
        postalcode = params[:postal_code]
        format = 'json'
    
        url = "https://us1.locationiq.com/v1/search.php?key=#{ENV['locationIQ_api_key']}&street=#{street}&city=#{city}&state=#{state}&postalcode=#{postalcode}&format=#{format}"
        uri = URI(url)

        response = Net::HTTP.get(uri)

        response = JSON.parse(response)
        # guard against incorrect/unknown zip
        i = i == nil ? 0 : response.map{|location| location["display_name"].split.slice(-2)}.index("#{params[:postal_code]},")

        response[i][vector]
    end

    def create
        user = User.find(params[:user_id])

        user.leads.new(lead_params)
        user.leads.last.update!(latitude: fetch_vector(lead_params, 'lat')) 
        user.leads.last.update!(longitude: fetch_vector(lead_params, 'lon')) 
        user.leads.last.save
        render json: user.leads.last
    end

    def update
        lead = Lead.find(params[:id])
        lead.update(lead_archived?: lead_params[:lead_archived?])

        render json: lead

    end

    private
    def lead_params
        params.permit(:user_id, :first_name, :last_name, :street, :city, :state, :postal_code, :phone_number, :beneficiary_information, :date_of_birth, :lead_archived?)
    end
end


