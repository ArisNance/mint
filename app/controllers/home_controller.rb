class HomeController < ApplicationController
  def index
    @pins = Pin.all
  end
  
  def about
  end
  
  def landing
  end
end
