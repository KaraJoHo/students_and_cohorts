class Api::V1::StudentsController < ApplicationController 
  def index  
    students = Student.all
    render json: Api::V1::StudentSerializer.format_students(students)
  end
end