class PickDrop < ApplicationRecord
  belongs_to :trip, optional: true
end
