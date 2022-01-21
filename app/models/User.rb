class User < ActiveRecord::Base
  has_many :flight_histories
  has_many :electricity_histories
  has_many :shipping_histories
  has_many :vehicle_histories
  
end