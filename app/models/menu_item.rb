class MenuItem < ApplicationRecord
    has_many :menu_items_menus
    has_many :menus, through: :menu_items_menus
    validates :name, :price_cents, :menu_id, presence: true
    validates :name, uniqueness: true
end
