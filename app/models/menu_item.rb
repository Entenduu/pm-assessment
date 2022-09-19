class MenuItem < ApplicationRecord
    belongs_to :menu
    validates :name, :price_cents, :menu_id, presence: true
end
