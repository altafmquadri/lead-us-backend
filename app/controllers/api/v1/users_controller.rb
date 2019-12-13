class Api::V1::UsersController < ApplicationController

    def index
        # leads = Lead.all
        users = User.all
        # render json: users, include: %i[leads appointments], except: %i[created_at updated_at]
        render json: { users: users}, include: [:leads, :appointments]
    end
end
