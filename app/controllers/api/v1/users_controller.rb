class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: { users: users}, include: [:leads, :calls, :appointments, :sales]
    end

    def create
        user = User.new(user_params)
        
        if user.save
            render json: {user: user}, include: [:leads, :calls, :appointments, :sales]
        else
            render json: {errors: user.errors.full_messages}
        end
    end 

    def show

    end

    private

    def user_params
        params.permit(:username, :first_name, :last_name, :company_name, :password, :password_confirmation)
    end

end

# render json: users, include: %i[leads appointments], except: %i[created_at updated_a]

#use this for finding the id for the show page tomorrow 
# user.leads.find{|lead| lead.id == 1} number will be replaced by the id of the clicked show lead