class DaysController < ApplicationController

    def index
        @days = Day.all
        render json: @days
    end

    def create 
        current_user = User.first

        @day = current_user.days.create!(day_params)
        if @day.valid?
            render json: @day
        else
            render json: {error: @day.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def show
        @day = Day.find_by(id: params[:id])
        if @day
            render json: @day
        else
            render json: {error: 'Day not found'}
        end
    end

    def update
        @day = Day.find(params[:id])
        @day.update(day_params)
        render json: @day 
    end

    def destroy
        @day = Day.find(params[:id])
        @day.destroy
        render json: @day
    end

    private

    def day_params
        params.permit(:entry, :mood, :water_intake, :user_id)
    end


end
