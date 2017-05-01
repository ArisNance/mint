class SearchController < ApplicationController
 def search
  if params[:q].nil?
    @stories = []
  else
    @stories = Story.search params[:q]
  end
 end
end