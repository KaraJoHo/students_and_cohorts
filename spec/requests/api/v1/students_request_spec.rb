require "rails_helper"

RSpec.describe "Students API" do 
  describe "Students API" do 
    it "gets a list of students and their details" do 
      create_list(:cohort, 2)
      create_list(:student, 3)

      get "/api/v1/students" 

      expect(response).to be_successful 

      students = JSON.parse(response.body, symbolize_names: true)
      expect(students.count).to eq(3)

      students.each do |student| 
        expect(student).to have_key(:first_name)
        expect(student[:first_name]).to be_a(String)

        expect(student).to have_key(:last_name)
        expect(student[:last_name]).to be_a(String)

        expect(student).to have_key(:preferred_name)
        expect(student[:preferred_name]).to be_a(String)

        expect(student).to have_key(:pronouns)
        expect(student[:pronouns]).to be_a(String)

        expect(student).to have_key(:email)
        expect(student[:email]).to be_a(String)

        expect(student).to have_key(:github_username)
        expect(student[:github_username]).to be_a(String)

        expect(student).to have_key(:slack_username)
        expect(student[:slack_username]).to be_a(String) 

        expect(student).to have_key(:cohort_id)
        expect(student[:cohort_id]).to be_an(Integer)
      end
    end
  end
end