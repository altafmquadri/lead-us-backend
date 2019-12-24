class Api::V1::AppointmentsController < ApplicationController

    def create
        user = User.find(params[:user_id])
        user.leads.find{|lead| lead.id == appointments_params[:lead_id]}.appointments.create(appointments_params)
        render json: user.appointments.last
    end

    def update
        appointment = Appointment.find(params[:id])
        appointment.update(presentation_made?: appointments_params[:presentation_made?], made_sale?: appointments_params[:made_sale?])
        render json: appointment
    end

    private
    
    def appointments_params
        params.permit(:user_id, :lead_id, :title, :date, :start_time, :end_time, :presentation_made?, :made_sale?)
    end
end
