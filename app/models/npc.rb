class Npc < ApplicationRecord
    validates :name, :address, :likes, :image, presence: true
    validates :likes, length: { minimum: 10}
    validates :name, length: { minimum: 3 }
end
