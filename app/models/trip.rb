class Trip < ApplicationRecord
  has_many :pick_drops, dependent: :destroy
  belongs_to :customer, optional: true
  belongs_to :driver, optional: true
  accepts_nested_attributes_for :pick_drops, allow_destroy: true, reject_if: proc { |att| att['address'].blank? }

end 
