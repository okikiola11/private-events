class EventsController < ApplicationController
  before_action :logged_in_user, only: [:new, :index]
  
  def index
    @events = Event.all
  end

  def new
    @event = current_user.created_events.new
  end

  def create
    @event = current_user.created_events.build(event_params)
    
    if @event.save
      flash[:success] = 'You have successfully created an event'
      redirect_to @event
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def attendees
    @attendees = Event.attendees.all
    # @event.attendees << current_user
    # @event.save
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :events_date)
  end

end
