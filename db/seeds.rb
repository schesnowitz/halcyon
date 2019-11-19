cus1 = Customer.create!(name: "C.H. Robinson", address: "any street", email: "email@emai.com", load_contact: "Guy at broker 555.121.1122")
cus2 = Customer.create!(name: "Uber Freight", address: "any street", email: "email@emai.com", load_contact: "Guy at broker 555.121.1122")
cus3 = Customer.create!(name: "Convoy", address: "any street", email: "email@emai.com", load_contact: "Guy at broker 555.121.1122")
cus4 = Customer.create!(name: "XPO Logistics", address: "any street", email: "email@emai.com", load_contact: "Guy at broker 555.121.1122")

driver1 = Driver.create!(first_name: "Steve", last_name: "McKnight", rate: 0.50)
driver2 = Driver.create!(first_name: "Tony", last_name: "Roma", rate: 0.45)
driver3 = Driver.create!(first_name: "Joe", last_name: "Trucker", rate: 0.38) 


50.times do
  trip = Trip.create!(
  amount: Faker::Number.between(from: 500, to: 5300) ,
  origin_business_name: Faker::Company.name,
  origin_address: Faker::Address.full_address,
  final_destination_business_name: Faker::Company.name,
  final_destination_address: Faker::Address.full_address,
  customer_id: Faker::Number.between(from: 1, to: 4),
  driver_id:Faker::Number.between(from: 1, to: 3),
  distance: Faker::Number.between(from: 400, to: 2700)
  )
  puts trip.inspect
end

