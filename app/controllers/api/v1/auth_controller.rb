class Api::V1::AuthController < ApplicationController

    def login
    
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])

            user.update(latitude: params[:latitude])
            user.update(longitude: params[:longitude])
            user.save

            render json: user, include: [:leads, :calls, :appointments, :sales]
        else
            render json: {errors: "Login Failed"}
        end
    end

    def auto_login
        if session_user 
            render json: session_user, include: [:leads, :calls, :appointments, :sales]
        else
            render json: {errors: "Login credentials don't exist"}
        end
    end

    private

    def login_params
        params.permit(:username, :password, :latitude, :longitude )
    end

end
