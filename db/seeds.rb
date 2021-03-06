weworks = [
  {name: "Finsbury Pavement",
   country: "UK",
   address: "131 Finsbury Pavement",
   rent_per_floor: 18000,
   number_of_floors: 8
  },
  {name: "Chelsea HQ",
   country: "US",
   address: "29 West 28th Street",
   rent_per_floor: 20000,
   number_of_floors: 20
  },
  {name: "Broadway",
   country: "US",
   address: "85 Broadway",
   rent_per_floor: 25000,
   number_of_floors: 6
  }
]

weworks.each do |we|
  Building.create(we)
end

companies = [
  "Microsoft",
  "Flatiron",
  "Green Peace",
  "FinFund LLC",
  "Inc'd Comics",
  "Blue Apron",
  "Dog the Bounty Hunter LLC"
]

companies.each do |company|
  Company.create(name: company)
end

titles = [
  "CEO",
  "Engineer",
  "HR specialist",
  "Graphic designer",
  "CFO",
  "COO",
  "Instructor"
]

100.times do
  Employee.create(
    name: Faker::Name.name_with_middle,
    title: titles.sample,
    company: Company.all.sample
  )
end
# create the seeds for the offices table
######### for Broadway building
Office.create(
    building: Building.find_by(name: "Broadway"),
    company: Company.find_by(name: "Microsoft"),
    floor: 1
    )

Office.create(
    building: Building.find_by(name: "Broadway"),
    company: Company.find_by(name: "Microsoft"),
    floor: 2
    )

Office.create(
  building: Building.find_by(name: "Broadway"),
  company: Company.find_by(name: "Green Peace"),
  floor: 3
  )

###########for Chelsea HQ building
Office.create(
    building: Building.find_by(name: "Chelsea HQ"),
    company: Company.find_by(name: "Blue Apron"),
    floor: 1
    )
Office.create(
    building: Building.find_by(name: "Chelsea HQ"),
    company: Company.find_by(name: "Flatiron"),
    floor: 2
    )
Office.create(
    building: Building.find_by(name: "Chelsea HQ"),
    company: Company.find_by(name: "Inc'd Comics"),
    floor: 3
    )

###########for FP building
  Office.create(
    building: Building.find_by(name: "Finsbury Pavement"),
    company: Company.find_by(name: "FinFund LLC"),
    floor: 1
    )
Office.create(
    building: Building.find_by(name: "Finsbury Pavement"),
    company: Company.find_by(name: "Dog the Bounty Hunter LLC"),
    floor: 2
    )
