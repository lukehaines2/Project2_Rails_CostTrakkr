class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  
  def new
    @events = Event.new
  end

  def create
    event = Event.new(params.require(:event).permit(:name, :date, :location, :cost))

    if event.save
      redirect_to event
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

end
