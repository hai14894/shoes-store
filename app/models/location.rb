class Location < ApplicationRecord
    has_many :shoes, dependent: :destroy
    
end
