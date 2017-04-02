class Pin < ActiveRecord::Base
    belongs_to :user
    
    validates_formatting_of :image_url, using: :url
    validates_formatting_of :wiki_url, using: :url
end
