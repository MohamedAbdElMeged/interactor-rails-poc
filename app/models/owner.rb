class Owner < ApplicationRecord
    has_one :company
    validates :company_id, presence: true, uniqueness: true
end
