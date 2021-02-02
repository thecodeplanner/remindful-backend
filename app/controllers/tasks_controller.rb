class TasksController < ApplicationController

    def index
        @tasks = Task.all
        render json: @tasks
    end

    def create 
        @task = Task.create!(task_params)
        if @task.valid?
            render json: @task
        else
            render json: {error: @task.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def task_params
        params.permit(:description, :complete, :day_id)
    end
    
end
