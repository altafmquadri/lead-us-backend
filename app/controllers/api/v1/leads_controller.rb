class Api::V1::LeadsController < ApplicationController
    def create
        user = User.find(params[:user_id])
        user.leads.create(lead_params)
        render json: user.leads.last
    end

    private
    def lead_params
        params.permit(:user_id, :first_name, :last_name, :street, :city, :state, :postal_code, :phone_number, :beneficiary_information, :date_of_birth)
    end
end


