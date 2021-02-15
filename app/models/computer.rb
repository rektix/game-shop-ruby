class Computer < ApplicationRecord
    belongs_to  :user
    belongs_to  :cpu
    belongs_to  :gpu
    validates :ram, presence: true
end
