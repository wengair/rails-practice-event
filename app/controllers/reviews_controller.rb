class ReviewsController < ApplicationController
  before_action :set_evt, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(str_params)
    @review.event = @event
    if @review.save
      redirect_to event_path(@event)
    else
      render 'events/show'
    end
  end

  private

  def set_evt
    @event = Event.find(params[:event_id])
  end

  def str_params
    params.require(:review).permit(:rating, :content)
  end
end
