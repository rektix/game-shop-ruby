class Gpu < ApplicationRecord
    has_and_belongs_to_many :computers
    validates :name, presence: true
    validates :ram, presence: true
end
