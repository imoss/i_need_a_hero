module EmployeesHelper
  def employee_name(employee)
    EmployeePresenter.new(employee, self).present
  end
end
