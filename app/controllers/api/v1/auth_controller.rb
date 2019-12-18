class Api::V1::AuthController < ApplicationController

    def login
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            render json: user, include: [:leads, :calls, :appointments, :sales]
        else
            render json: {errors: "Login Failed"}
        end
    end
end
