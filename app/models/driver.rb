class Driver < ApplicationRecord

  has_many :trips
  def driver_full_name
    return self.first_name + " " + self.last_name
  end
end
