class Company < ApplicationRecord
    has_one :owner
    validates :name, presence: true, uniqueness: true
    validates :address, presence: true, uniqueness: true
end
