class Cat < ApplicationRecord
    has_many :listings
    has_many :adoption_centers, through: :listings
end
