class Driver < ApplicationRecord

  has_many :trips
  has_many :driver_statements
  # validates_numericality_of :rate, greater_than_or_equal_to: 0.05, less_than_or_equal_to: 0.99, :message => "Driver Rate needs to be between 0.05 and 0.99" 



  def driver_full_name
    return self.first_name + " " + self.last_name
  end
end
