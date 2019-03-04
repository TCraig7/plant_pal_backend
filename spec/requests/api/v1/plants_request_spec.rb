require 'rails_helper'

describe "Plants API" do
  it "sends a list of plants" do
    plant_1 = Plant.create!(name: "ZZ Plant", amount_of_light: 3, amount_of_water: 3)
    plant_2 = Plant.create!(name: "Lucky Bamboo", amount_of_light: 2, amount_of_water: 3)
    plant_3 = Plant.create!(name: "Pothos", amount_of_light: 2, amount_of_water: 2)

    get '/api/v1/plants'

    expect(response).to be_successful

    plants = JSON.parse(response.body)

    expect(plants.count).to eq(3)
  end
end
