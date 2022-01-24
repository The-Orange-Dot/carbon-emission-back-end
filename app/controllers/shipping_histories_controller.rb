class ShippingHistoriesController < ApplicationController

  delete "/shipping_histories/:id" do
    ShippingHistory.find(params[:id]).destroy.to_json
  end

  post "/shipping_histories" do
    ShippingHistory.create(
      date: params[:date],
      weight: params[:weight],
      distance: params[:distance],
      method: params[:method],
      carbon_lb: params[:carbon_lb],
      user_id: params[:user_id]
    ).to_json
  end

  get "/shipping_histories" do 
    ShippingHistory.all.to_json
  end
  
end