require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  describe "Associations" do
    it { should have_many(:menus)}
  end

  describe "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_uniqueness_of(:name) }
  end
end
