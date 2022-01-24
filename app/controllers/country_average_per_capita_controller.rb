class CountryAverageCapitaController < ApplicationController

  get "/countryAverageCapita" do
    CountryAverageCapita.all.to_json
  end

end