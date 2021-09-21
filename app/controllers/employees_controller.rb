class EmployeesController < ApplicationController
  expose :employees, ->{ Employee.all }
  expose :employee

  def create
    Employee.create(employee_params)

    redirect_to employees_path
  end

  private

  def employee_params
    params.require(:employee).permit(:name)
  end
end
