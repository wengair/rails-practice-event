class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update]
  def index
    @events = Event.all
  end

  def show
    @review = Review.new
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(str_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @event.update(str_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
  end

  def update_list
    @query = params[:update_list][:query]
    redirect_to root_path if @query == ''
    @total = Event.all.length
    @events = Event.where("name LIKE '%#{@query}%'")
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def str_params
    params.require(:event).permit(:name, :pic, :start_time, :end_time, :capacity, :place, :link)
  end
end
