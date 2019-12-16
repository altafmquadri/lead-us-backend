class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: { users: users}, include: [:leads, :calls, :appointments, :sales]
    end

end

# render json: users, include: %i[leads appointments], except: %i[created_at updated_a]

#use this for finding the id for the show page tomorrow 
# user.leads.find{|lead| lead.id == 1} number will be replaced by the id of the clicked show lead