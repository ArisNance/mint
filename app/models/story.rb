class Story < ActiveRecord::Base
require 'elasticsearch/model'
include Elasticsearch::Model
include Elasticsearch::Model::Callbacks

    belongs_to :user
    
    validates_formatting_of :header_image, using: :url
    # validates_formatting_of :facebook_url, using: :url
    validates_formatting_of :twitter_url, using: :url

class SearchController < ApplicationController
  def search
    if params[:search].nil?
      @stories = []
    else
      @stories = Story.search params[:content]
    end
  end
end

  def self.search(search)
  where("title LIKE ?", "%#{search}%") 
  where("content LIKE ?", "%#{search}%")
  end
end