class Poem < ActiveRecord::Base
    belongs_to :user
    
    validates_formatting_of :header_image, using: :url
end
