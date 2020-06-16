class Listing < ApplicationRecord
    belongs_to :adoption_center
    belongs_to :cat

    validates :title, presence: true
    validates :content, presence: true
    validates :date_added, presence: true
    validates :cat_id, uniqueness: true
end

