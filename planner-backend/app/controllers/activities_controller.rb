class ActivitiesController < ApplicationController

    def create
        activity = Activity.new(activity_params)
        if activity.save
            render json: activity.to_json
        else
            render json: {error: activity.errors.full_messages.join(" ")}
        end
    end

    private
    def activity_params
        params.require(:activity).permit(:name, :length, :location, :description, :cost, :supplies, :trip_id, :timeslot_id)

    end
end
