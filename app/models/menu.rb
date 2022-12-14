class Menu < ApplicationRecord
    has_many :menu_items_menus
    has_many :menu_items, through: :menu_items_menus
    belongs_to :restaurant
    validates :name, presence: true
end
