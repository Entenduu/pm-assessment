desc 'parse json object'
task load: :environment do
    file = File.read('./restaurant_data.json')
    data_hash = JSON.parse(file)
    data_hash['restaurants'].each do |restaurants|
        restaurant = Restaurant.create!(name: restaurants['name'])
        restaurants['menus'].each do |menus|
            menu = Menu.create!(restaurant: restaurant, name: menus['name'])
            key = menus.key?('menu_items') ? 'menu_items' : 'dishes'
            menus[key].each do |menu_items|
                existing = MenuItem.where(name: menu_items['name'])
                if !existing.present? 
                    menu.menu_items.create!(name: menu_items['name'], price: menu_items['price'])
                    if existing
                        puts "#{menu_items['name']} successfully added"
                    end
                end
            end
        end
    end
end


