class EventsController < ApplicationController
  def index
  end

  def new
    @event = Event.new
  end

  def create
    @event =  Event.new(event_params)
    if @event.save
      flash[:notice] = "Event has been successfully created"
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params

    params.require(:event).permit(:event_name, :description, :date)

  end


end
