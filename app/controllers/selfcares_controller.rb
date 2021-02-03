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

    def show
        @selfcare = Selfcare.find_by(id: params[:id])
        if @selfcare
            render json: @selfcare
        else
            render json: {error: 'Selfcare not found'}
        end
    end

    def update
        @selfcare = Selfcare.find(params[:id])
        @selfcare.update(selfcare_params)
        render json: @selfcare
    end

    private

    def selfcare_params
        params.permit(:description, :complete, :day_id)
    end
end
