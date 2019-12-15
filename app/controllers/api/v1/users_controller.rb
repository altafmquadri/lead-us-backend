class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: { users: users}, include: [:leads, :calls, :appointments, :sales]
    end

    def create
        user = User.find(params[:user_id]
        user.leads.create(lead_params)
        render json: user.leads.last
    end

    private
    def lead_params
        params.permit(:user_id, :first_name, :last_name, :street, :city, :state, :postal_code, :phone_number, :beneficiary_information, :date_of_birth)
    end
end

# render json: users, include: %i[leads appointments], except: %i[created_at updated_a]

#use this for finding the id for the show page tomorrow 
# user.leads.find{|lead| lead.id == 1} number will be replaced by the id of the clicked show lead