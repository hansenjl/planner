class TripsController < ApplicationController

    def index
        trips = Trip.where(user_id: params[:user_id])
        render json: trips.to_json
    end

    def create
        trip = Trip.new(trip_params)
        if trip.save
            render json: trip.to_json
        else
            render json: {error: trip.errors.full_messages.join(" ")}
        end
    end

    private
    def trip_params
        params.require(:trip).permit(:name, :startdate, :enddate, :user_id)

    end
end
