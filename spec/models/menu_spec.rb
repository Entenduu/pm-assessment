require 'rails_helper'

RSpec.describe Menu, type: :model do
  describe "Associations" do
    it { should have_many(:menu_items) }
    it { should belong_to(:restaurant) }
  end

  describe "Validations" do
    it { should validate_presence_of(:name) }
  end
end