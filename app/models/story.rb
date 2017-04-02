class Story < ActiveRecord::Base
    belongs_to :user
    
    validates_formatting_of :header_image, using: :url
    # validates_formatting_of :facebook_url, using: :url
    # validates_formatting_of :twitter_url, using: :url
end
