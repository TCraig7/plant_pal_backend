class Plant < ApplicationRecord
  validates_presence_of :name, :amount_of_light, :amount_of_water
end
