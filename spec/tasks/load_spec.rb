require "rails_helper"
Rails.application.load_tasks

describe "load.rake" do
    it 'checks the count of restaurants' do
        Rake::Task['load'].invoke
        expect(Restaurant.count).to be(2)
        expect(Menu.count).to be(4)
        expect(MenuItem.count).to be(6)
    end
end