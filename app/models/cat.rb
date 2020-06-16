class Cat < ApplicationRecord
    has_many :listings
    has_many :adoption_centers, through: :listings

    validates :name, presence: true
    validates :breed, presence: true
    validates :age, presence: true
end
