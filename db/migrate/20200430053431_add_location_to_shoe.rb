class AddLocationToShoe < ActiveRecord::Migration[5.2]
  def change
    add_reference :shoes, :location, foreign_key: true
  end
end
