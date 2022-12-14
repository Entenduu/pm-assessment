require 'rails_helper'

RSpec.describe MenuItemsMenu, type: :model do
  describe "Associations" do
    it { should belong_to(:menu) }
    it { should belong_to(:menu_item) }
  end
end
