class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @events = current_user.events.build
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @events = current_user.events.build(event_params)

    respond_to do |format|
      if @events.save
        format.html { redirect_to @events, notice: 'event was successfully created.' }
        format.json { render :show, status: :created, location: @events }
      else
        format.html { render :new }
        format.json { render json: @events.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @events.update(event_params)
        format.html { redirect_to @events, notice: 'event was successfully updated.' }
        format.json { render :show, status: :ok, location: @events }
      else
        format.html { render :edit }
        format.json { render json: @events.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @events.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @events = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:summary, :event_image, :web_url, :name, :start_time, :end_time)
    end
end

def correct_user
  @event = current_user.events.find_by(id: params[:id])
  redirect_to events_path, notice: "Not authorized to edit this event" if @event.nil?
end