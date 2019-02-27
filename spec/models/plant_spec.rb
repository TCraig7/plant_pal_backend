require "rails_helper"

describe Plant, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:amount_of_light) }
    it { should validate_presence_of(:amount_of_water) }
  end
end
