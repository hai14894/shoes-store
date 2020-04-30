class Shoe < ApplicationRecord
   belongs_to :location
   enum condition: { used: 0, brand_new: 1 }
end
