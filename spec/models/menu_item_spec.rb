require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  describe "Associations" do
    it { should belong_to(:menu).without_validating_presence }
  end

  describe "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price_cents) }
    it { should validate_presence_of(:menu_id) }
  end
end
