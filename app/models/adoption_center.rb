class AdoptionCenter < ApplicationRecord
    has_many :listings
    has_many :cats, through: :listings
end
