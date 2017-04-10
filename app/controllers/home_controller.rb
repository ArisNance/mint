class HomeController < ApplicationController
  respond_to :js
  
  def index
    @pins = Pin.all
  end
  
  def photos
  
  end
  
  def landing
  end
end
