class Api::V1::SalesController < ApplicationController

    def create
        user = User.find(sales_params[:user_id])
        user.sales.create(sales_params)
        render json: user.sales.last
    end

    private
    def sales_params
        params.permit(:user_id, :lead_id, :annualized_life_premium)
    end
end
