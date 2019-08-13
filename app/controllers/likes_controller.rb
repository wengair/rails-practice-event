class LikesController < ApplicationController

  def create
    @user = User.first
    @event = Event.find(params[:event_id])
    @like = Like.new
    @like.user = @user
    @like.event = @event
    @like.save
    redirect_to event_path(@event)
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to event_path(@like.event)
  end
end
