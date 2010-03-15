require 'machinist/active_record' 
require 'sham'

Resume.blueprint do
  name "Joe Tester"
  address "123 Test St"
  city "San Diego"
  state "CA"
  zip "92102"
  summary "I want a super good job and/or gig"
  phone "(123) 456-7890"
  email "joe@example.com"
  website "http://www.example.com"
end

Sham.position { Faker::Lorem.words(1).first.capitalize }
Sham.employer { Faker::Company.name }
Sham.location { "#{Faker::Address.city}, #{Faker::Address.us_state_abbr}" }
Sham.description { Faker::Company.bs }

Job.blueprint do
  position    { Sham.position }
  employer    { Sham.employer }
  location    { Sham.location }
  start_date  { Time.now.years_ago(2) }
  end_date    { Time.now.years_ago(1) }
  description { Sham.description }
end

Sham.skill_name  { Faker::Lorem.words(1).first.capitalize }
Sham.skill_level { rand(3) + 1 }
Skill.blueprint do
  name  { Sham.skill_name }
  level { Sham.skill_level }
end
