class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_type
      t.integer :accommodate
      t.integer :num_bedroom
      t.integer :num_bed
      t.string :bldg_number
      t.integer :num_bathroom
      t.string :list_name
      t.text :summary
      t.string :country
      t.string :city
      t.string :street_address
      t.integer :nightly_price
      t.integer :weekly_price
      t.integer :monthly_price
      t.integer :service_fee
      t.integer :cleaing_fee
      t.integer :security_deposit
      t.integer :basic_fund
      t.boolean :is_restaurant
      t.boolean :is_store
      t.boolean :is_mall
      t.boolean :is_school
      t.boolean :is_gym
      t.boolean :is_park
      t.boolean :is_gas_station
      t.boolean :is_daycare
      t.boolean :is_collage
      t.boolean :is_hypermarket
      t.boolean :is_transportation
      t.boolean :is_hospital
      t.boolean :is_health_center
      t.boolean :is_indoor_fireplace
      t.boolean :is_doorman
      t.boolean :is_breakfast
      t.boolean :is_coffeeshop
      t.boolean :is_dryer
      t.boolean :is_washer
      t.boolean :is_family_friens
      t.boolean :is_home_gym
      t.boolean :is_hot_tub
      t.boolean :is_hangers
      t.boolean :is_hair_dryer
      t.boolean :is_iron
      t.boolean :is_essentials
      t.boolean :is_suitable_for_events
      t.boolean :is_internet
      t.boolean :is_tv
      t.boolean :is_hour_check_in
      t.boolean :is_pool
      t.boolean :is_pets_allowed
      t.boolean :is_wheelchair_accessible
      t.boolean :is_shampoo
      t.boolean :is_heating
      t.boolean :is_smoking_allowed
      t.boolean :is_air_conditioning
      t.boolean :is_elevator
      t.boolean :is_fan
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
