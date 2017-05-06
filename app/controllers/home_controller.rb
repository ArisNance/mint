class HomeController < ApplicationController
  respond_to :js
  
  def index
    @pins = Pin.all
    @pins = Pin.paginate(:page => params[:page], :per_page => 9)
  end
  
  def photos
  
  end
  
  def about
  end
  
  def sponsor
  end
end
