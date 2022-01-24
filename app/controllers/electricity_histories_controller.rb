class ElectricityHistoriesController < ApplicationController
  
  delete "/electricity_histories/:id" do
    ElectricityHistory.find(params[:id]).destroy.to_json
  end

  post "/electricity_histories" do
    ElectricityHistory.create(
      date: params[:date],
      country: params[:country],
      state: params[:state],
      electricity_value: params[:electricity_value],
      carbon_lb: params[:carbon_lb],
      user_id: params[:user_id]
    ).to_json
  end

  get "/electricity_histories" do 
    ElectricityHistory.all.to_json
  end

end