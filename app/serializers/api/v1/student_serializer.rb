class Api::V1::StudentSerializer 
  def self.format_students(students)
    students.map do |student|
      {
        first_name: student.first_name,
        last_name: student.last_name,
        preferred_name: student.preferred_name, 
        pronouns: student.pronouns,
        email: student.email,
        github_username: student.github_username,
        slack_username: student.slack_username,
        cohort_id: student.cohort_id
      }
    end
  end
end