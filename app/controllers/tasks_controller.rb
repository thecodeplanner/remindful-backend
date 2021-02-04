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

    def show
        @task = Task.find_by(id: params[:id])
        if @task
            render json: @task
        else
            render json: {error: 'Task not found'}
        end
    end

    def update
        @task = Task.find(params[:id])
        @task.update(task_params)
        render json: @task 
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        render json: @task
    end


    private

    def task_params
        params.permit(:description, :complete, :day_id)
    end
    
end
