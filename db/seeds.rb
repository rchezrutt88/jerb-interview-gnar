# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jobs = [
    ['Nick Maloney', 'Landscaping', 'Boston', 'New'],
    ['Peter Brown', 'Landscaping', 'Bedford', 'Pending'],
    ['Jen Morris', 'Babysitting', 'Boston', 'Complete']]

jobs.each do |poster, category, location, status|
  Job.create(poster: poster, category: category, location: location, status: status)
end