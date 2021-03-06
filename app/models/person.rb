class Person < ActiveRecord::Base
    belongs_to :user
    
    validates_formatting_of :linkedin_url, using: :url
    # validates_formatting_of :facebook_url, using: :url
    # validates_formatting_of :twitter_url, using: :url
    validates_formatting_of :person_image, using: :url
end
