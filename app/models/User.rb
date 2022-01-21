class User < ActiveRecord::Base
  has_many :flight_histories
  has_many :electricity_histories
  has_many :shipping_histories
  has_many :vehicle_histories
  
  def flightHistory
    self.flight_histories.to_json
  end

  def shippingHistory
    self.shipping_histories.to_json
  end

  def vehicleHistory
    self.vehicle_histories.to_json
  end

  def electricityHistory
    self.electricity_histories.to_json
  end

end