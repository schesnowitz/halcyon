class DriverStatement < ApplicationRecord
  belongs_to :driver

  has_many :statementtripizations
  has_many :trips, through: :statementtripizations
  accepts_nested_attributes_for :trips
end
