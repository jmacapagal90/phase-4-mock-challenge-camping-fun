class ActivitiesController < ApplicationController

    before_action :set_activity, only: :destroy
    
    def index 
        render json: Activity.all
    end

    def destroy
        @activity.destroy
        head :no_content
    end

    private 

    def set_activity
        @activity = Activity.find(params[:id])
    end

end
