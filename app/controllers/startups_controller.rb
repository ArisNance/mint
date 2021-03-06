class StartupsController < ApplicationController
  before_action :set_startup, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /startups
  # GET /startups.json
  def index
    @startups = Startup.all
    @startups = Startup.order('created_at DESC').paginate(:page => params[:page], :per_page => 6)
  end

  # GET /startups/1
  # GET /startups/1.json
  def show
  end

  # GET /startups/new
  def new
    @startup = current_user.startups.build
  end

  # GET /startups/1/edit
  def edit
  end

  # POST /startups
  # POST /startups.json
  def create
    @startup = current_user.startups.build(startup_params)

    respond_to do |format|
      if @startup.save
        format.html { redirect_to startups_url, notice: 'listing was successfully created.' }
        format.json { render :index, status: :created, location: @startup }
      else
        format.html { render :new }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /startups/1
  # PATCH/PUT /startups/1.json
  def update
    respond_to do |format|
      if @startup.update(startup_params)
        format.html { redirect_to startups_url, notice: 'listing was successfully updated.' }
        format.json { render :index, status: :ok, location: @startup }
      else
        format.html { render :edit }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startups/1
  # DELETE /startups/1.json
  def destroy
    @startup.destroy
    respond_to do |format|
      format.html { redirect_to startups_url, notice: 'startup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_startup
      @startup = Startup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def startup_params
      params.require(:startup).permit(:company_name, :location, :founder, :team_two, :team_three, :web_url, :twitter_url, :facebook_url, :option_url)
    end
end

def correct_user
  @startup = current_user.startups.find_by(id: params[:id])
  redirect_to startups_path, notice: "Not authorized to edit this post" if @startup.nil?
end