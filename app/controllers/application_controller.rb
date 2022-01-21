class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/users" do
   User.all.to_json
  end

  get "/users/:id" do
    user = User.all.find(params[:id])
    user.to_json
  end

  get "/countryAverageCapita" do
    country = CountryAverageCapita.all
    country.to_json
  end

  patch "/users/:id" do
     puts params 
  end

end
