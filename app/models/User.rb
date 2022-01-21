class User < ActiveRecord::Base
  has_many :flight_histories
  has_many :electricity_histories
  has_many :shipping_histories
  has_many :vehicle_histories
  


  def flightHistory
    self.flight_histories
  end

  def shippingHistory
    self.shipping_histories
  end

  def vehicleHistory
    self.vehicle_histories
  end

  def electricityHistory
    self.electricity_histories
  end
  

end