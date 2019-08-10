class EventsController < ApplicationController
  before_action :set_event, only: [:show, :create]
  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
  end

  def edit
  end

  def update
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
    # params.require(:review).permit(:rating, :content)
  end
end
