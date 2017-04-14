class Event < ActiveRecord::Base
    belongs_to :user
    
    validates_formatting_of :event_image, using: :url
    validates_formatting_of :web_url, using: :url
end
