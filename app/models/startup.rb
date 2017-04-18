class Startup < ActiveRecord::Base
    belongs_to :user
    
    validates_formatting_of :web_url, using: :url
    validates_formatting_of :option_url, using: :url
end
