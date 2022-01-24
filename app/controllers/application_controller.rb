require "pry"

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/users" do
    User.all.to_json
  end

  delete "/shipping_histories/:id/" do
    ShippingHistory.find(params[:id]).destroy.to_json
  end

  delete "/vehicle_histories/:id/" do
    VehicleHistory.find(params[:id]).destroy.to_json
  end

  delete "/electricity_histories/:id/" do
    ElectricityHistory.find(params[:id]).destroy.to_json
  end

  delete "/flight_histories/:id/" do
    binding.pry
    FlightHistory.find(params[:id]).destroy.to_json
  end

  post "/shipping_histories" do
    ShippingHistory.create(
      date: params[:date],
      weight: params[:weight],
      distance: params[:distance],
      method: params[:method],
      carbon_lb: params[:carbon_lb],
      user_id: params[:user.id]
    ).to_json
  end

  post "/flight_histories" do
    FlightHistory.create(
      date: params[:date],
      passengers: params[:passengers],
      departure: params[:departure],
      destination: params[:destination],
      carbon_lb: params[:carbon_lb],
      user_id: params[:user.id]
    ).to_json
  end

  post "/vehicle_histories" do
    VehicleHistory.create(
      date: params[:date],
      distance_value: params[:distance_value],
      distance_unit: params[:distance_unit],
      vehicle_make: params[:vehicle_make],
      vehicle_model: params[:vehicle_model],
      vehicle_year: params[:vehicle_year],
      carbon_lb: params[:carbon_lb],
      user_id: params[:user.id]
    ).to_json
  end


  post "/electricity_histories" do
    ElectricityHistory.create(
      date: params[:date],
      country: params[:country],
      state: params[:state],
      electricity_value: params[:electricity_value],
      carbon_lb: params[:carbon_lb],
      user_id: params[:user.id]
    ).to_json
  end

  get "/flight_histories" do 
    FlightHistory.all.to_json
  end

  get "/shipping_histories" do 
    ShippingHistory.all.to_json
  end

  get "/electricity_histories" do 
    ElectricityHistory.all.to_json
  end

  get "/vehicle_histories" do 
    VehicleHistory.all.to_json
  end
  
  get "/countryAverageCapita" do
    CountryAverageCapita.all.to_json
  end

end
