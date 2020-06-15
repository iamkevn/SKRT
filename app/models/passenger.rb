class Passenger < ApplicationRecord
    has_many :rides
    has_many :drivers, through: :rides
end
