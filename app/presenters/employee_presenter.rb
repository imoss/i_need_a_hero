class EmployeePresenter
  attr_reader :employee, :helper

  def initialize(employee, helper)
    @employee = employee
    @helper = helper
  end

  def present
    helper.content_tag(:div) do
      employee.name.split(' ').map(&:capitalize).join(' ')
    end
  end

  private

  def name
    employee.name
  end

  def name_array
    name.split(' ')
  end

  def caps_name
    name_array.map(&:capitalize)
  end

  def pretty_name
    caps_name.join(' ')
  end
end
