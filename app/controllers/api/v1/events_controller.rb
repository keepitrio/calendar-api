module Api::V1
    class EventsController < ApplicationController
        def index
            @events = Event.order("start DESC")
            render json: @events
        end

        def create
            @event = Event.create(event_params)
            render json: @event
        end

        private

        def event_params
            params.require(:event).permit(:description, :start, :end, :dayId)
        end
    end
end
