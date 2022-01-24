class FlightHistoriesController < ApplicationController

  delete "/flight_histories/:id" do
    FlightHistory.find(params[:id]).destroy.to_json
  end

  post "/flight_histories" do
    FlightHistory.create(
      date: params[:date],
      passengers: params[:passengers],
      departure: params[:departure],
      destination: params[:destination],
      carbon_lb: params[:carbon_lb],
      user_id: params[:user_id]
    ).to_json
  end
  
  get "/flight_histories" do 
    FlightHistory.all.to_json
  end

end