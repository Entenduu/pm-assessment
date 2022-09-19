require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe "Associations" do
    it { should have_many(:menus)}
  end

  describe "Validations" do
    it { should validate_presence_of(:name) }
  end
end
