class VehicleHistoriesController < ApplicationController

  delete "/vehicle_histories/:id" do
    VehicleHistory.find(params[:id]).destroy.to_json
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
      user_id: params[:user_id]
    ).to_json
  end

  get "/vehicle_histories" do 
    VehicleHistory.all.to_json
  end

end