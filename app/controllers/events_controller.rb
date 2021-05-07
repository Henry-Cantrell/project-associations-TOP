class EventsController < ApplicationController
    before_action :require_login

    def new
        @event = Event.new
    end

    def show
        @event = Event.find(params[:id])
    end

    def create
        @event = current_user.events.build(event_params)

        if @event.save!
            redirect_to root_path
        else
            render :new
        end
    end

    private

    def event_params
        params.require(:event).permit(:date, :description, :name, :user_id)
    end
end

#Troubleshoot why events won't save.l