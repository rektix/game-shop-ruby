class User < ApplicationRecord
    has_many :articles
    validates :name, presence: true
    validates :password, length: { minimum: 4 }
                         presence: true
end
