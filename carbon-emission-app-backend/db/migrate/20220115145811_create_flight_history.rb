class CreateFlightHistory < ActiveRecord::Migration[6.1]
  def change

    create_table :flight_histories do |t|
      t.string :date
      t.integer :passengers
      t.string :departure
      t.string :destination
      t.float :carbon_lb
      t.integer :user_id
    end

    create_table :shipping_histories do |t|
      t.string :date
      t.integer :weight
      t.integer :distance
      t.string :method
      t.float :carbon_lb
      t.integer :user_id
    end

    create_table :vehicle_histories do |t|
      t.string :date
      t.integer :distance_value
      t.string :distance_unit
      t.string :vehicle_make
      t.string :vehicle_model
      t.integer :vehicle_year
      t.float :carbon_lb
      t.integer :user_id
    end  

    create_table :electricity_histories do |t|
      t.string :date
      t.string :country
      t.string :state
      t.integer :electricity_value
      t.float :carbon_lb
      t.integer :user_id
    end

  end
end
