class CreateCountryAverageCapita < ActiveRecord::Migration[6.1]
  def change
    create_table :country_average_capita do |t|
      t.string :country
      t.float :average
    end
  end
end
