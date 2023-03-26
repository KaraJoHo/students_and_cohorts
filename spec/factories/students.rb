FactoryBot.define do 
  factory :student do 
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    preferred_name {Faker::Name.name}
    pronouns {Faker::Lorem.word}
    email {Faker::Internet.email}
    github_username {Faker::Lorem.word}
    slack_username {Faker::Lorem.word}
    association :cohort
  end

  factory :cohort do 
    name {Faker::Name.name}
    start_date {Faker::Date.between(from: '2014-09-23', to: '2014-09-25')}
    graduation_date {Faker::Date.between(from: '2014-09-23', to: '2014-09-25')}
  end

  def cohort_with_students(students_count: 3)
    FactoryBot.create(:cohort) do |cohort|
      FactoryBot.create_list(:student, students_count, cohort: cohort)
    end
  end
end