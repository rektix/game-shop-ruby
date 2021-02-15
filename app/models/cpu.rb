class Cpu < ApplicationRecord
    has_and_belongs_to_many :computers
    validates :name, presence: true
    validates :cores, presence: true
end
