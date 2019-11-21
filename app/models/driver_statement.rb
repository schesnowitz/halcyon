class DriverStatement < ApplicationRecord
  belongs_to :driver
  has_many :trip_to_statements
  has_many :trips, through: :trip_to_statements
  accepts_nested_attributes_for :trip_to_statements
end


# do a add to statemets join has many through