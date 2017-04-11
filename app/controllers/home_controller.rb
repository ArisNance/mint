class HomeController < ApplicationController
  respond_to :js
  
  def index
    @pins = Pin.all
    @pins = Pin.paginate(:page => params[:page], :per_page => 1)
  end
  
  def photos
  
  end
  
  def landing
  end
end
