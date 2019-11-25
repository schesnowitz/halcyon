class Trip < ApplicationRecord
  has_many :trip_transactions, dependent: :destroy
  belongs_to :customer, optional: true
  belongs_to :driver, optional: true
  has_many :statementtripizations
  has_many :driver_statements, through: :statementtripizations
  validates_presence_of :driver
  validates_presence_of :customer
  accepts_nested_attributes_for :trip_transactions, allow_destroy: true, reject_if: proc { |att| att['address'].blank? }

  # enum status: { booked: "booked", on_route: "on_route", completed: "completed" }


  enum status: { booked: 'Booked', in_progress: 'In Progress', completed: 'Completed', cancelled: 'Cancelled' }
  # validates :status, inclusion: { in: statuses.keys }


  before_save :set_driver_rate
  before_save :calculate_driver_pay
  validates_numericality_of :driver_rate, greater_than_or_equal_to: 0.05, less_than_or_equal_to: 0.99, :message => "Driver Rate needs to be between 0.05 and 0.99", if: :custom_driver_rate? 

  validates_numericality_of :flat_rate, :message => "You selected a flat rate, please enter the rate.", if: :custom_flat_rate? 
  # validates_numericality_of :driver_rate, greater_than_or_equal_to: 0.05, less_than_or_equal_to: 0.99, :message => "Driver Rate needs to be between 0.05 and 0.99"
  
  # before_save :normalize_card_number, if: :paid_with_card?
  def set_driver_rate
    if self.custom_driver_rate?
      puts "the rate is custom"

    elsif self.custom_flat_rate?
      puts "a flat rate was paid"
    elsif
      self.custom_flat_rate == false && self.custom_driver_rate == false
      puts "the rate was set by driver rate"
    self.driver_rate = driver.rate
    end
  end


  def calculate_driver_pay
    self.driver_pay = self.driver_rate * self.distance
  end

end 
