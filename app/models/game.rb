class Game < ApplicationRecord
    belongs_to :studio
    belongs_to :genre
    has_many :comments
    validates :name, presence: true
    validates :price, presence: true
end
