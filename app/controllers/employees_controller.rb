class EmployeesController < ApplicationController
  expose :employees, ->{ Employee.all }

  def create
    binding.pry
  end
end
