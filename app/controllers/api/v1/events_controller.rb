class Api::V1::EventsController < ApplicationController
  before_filter :authenticate_user_from_token!, only: [:create, :update, :destroy]
  before_action :set_event, only: [:show, :update, :destroy]
  before_action :require_same_user, only: [:update, :destroy]

  # GET /api/v1/events
  def index
    events = Event.all

    render json: events
  end

  # GET /api/v1/events/1
  def show
    render json: @event, status: 200 # ok
  end

  # POST /api/v1/events
  def create
    @event = Event.new(event_params)
    @event.user = @user

    if @event.save
      render json: @event, status: :created
    else
      render json: @event.errors, status: 422 # unprocessable_entity
    end
  end

  # PATCH /api/v1/events/1
  def update
    if @event.update(event_params)
      render json: @event, status: 200 # ok
    else
      render json: @event.errors, status: 422 # unprocessable_entity
    end
  end

  private

  def event_params
    params.permit(:title, :description, :date_time, :location_id, :activity_id, :user_id)
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def require_same_user
    if @user != @event.user
      render json: { error: 'Unable to process this action on Event' }, status: 401 # unauthorized
    end
  end
end
