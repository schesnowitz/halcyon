class TripToStatement < ApplicationRecord
  belongs_to :trip
  belongs_to :driver_statement
end
