class CreateParkingSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :parking_spots do |t|
      t.references :parking_level, null: false, foreign_key: true
      t.references :garage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
