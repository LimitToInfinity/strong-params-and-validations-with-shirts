class Shirt < ApplicationRecord

    validates :size, presence: false
    validates :color, 
        presence: true, 
        length: { minimum: 3 }, 
        uniqueness: true
    validate :size_below_or_above

    private

    def size_below_or_above
        if size > 20
            errors.add(:size, "cannot be greater than 20")
        elsif size < 0
            errors.add(:size, "cannot be less than 0")
        end
    end
end
