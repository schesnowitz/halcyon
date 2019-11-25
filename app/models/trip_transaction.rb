class TripTransaction < ApplicationRecord
  belongs_to :trip, optional: true
end
