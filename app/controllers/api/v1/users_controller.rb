class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users, include: %i[leads appointments], except: %i[created_at updated_at]
    end
end
