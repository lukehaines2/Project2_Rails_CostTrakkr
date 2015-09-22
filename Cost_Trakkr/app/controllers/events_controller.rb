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

  def edit
    @event = Event.find(params[:id])
  end
  def update
    event = Event.find(params[:id])
    if event.update(event_params)
    redirect_to event
    else
    redner :edit
    end
  end


  def destroy
    event = Event.find(params[:id]).destroy
    redirect_to event
  end

  private

  def event_params
      params.require(:event).permit(:name, :date, :location, :cost)
    end

end
