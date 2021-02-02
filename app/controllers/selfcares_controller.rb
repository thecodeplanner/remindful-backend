class SelfcaresController < ApplicationController
    def index
        @selfcares = Selfcare.all
        render json: @selfcares
    end

    def create 
        @selfcare = Selfcare.create!(selfcare_params)
        if @selfcare.valid?
            render json: @selfcare
        else
            render json: {error: @selfcare.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def selfcare_params
        params.permit(:description, :complete, :day_id)
    end
end
