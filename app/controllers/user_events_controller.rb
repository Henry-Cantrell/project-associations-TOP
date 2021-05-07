class UserEventsController < ApplicationController
    def create
     event = Event.find(params[:id])  
     user_event = UserEvent.new(event_id: event.id, user_id: current_user.id) 
    
     if user_event.save
        redirect_to root_path
     else 
        render :new
     end
    end
end
