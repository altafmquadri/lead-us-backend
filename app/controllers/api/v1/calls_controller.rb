class Api::V1::CallsController < ApplicationController

    def create
        user = User.find(params[:user_id])
        user.leads.find{|lead| lead.id == calls_params[:lead_id]}.calls.create(calls_params)
        render json: user.calls.last

    end

    def calls_params
        params.permit(:user_id, :lead_id, :call_status, :appointment_made?, :archive_lead?)
    end
end


# user.leads.find{|lead| lead.id == 7}.calls.create!(user_id:user.id, call_status: "no answer") will need this for calls creation

