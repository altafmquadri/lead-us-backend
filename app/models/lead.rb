class Lead < ApplicationRecord
    belongs_to :user
    has_many :calls
    has_many :appointments
    has_one  :sale
end
