class UpdateEmployeeNameToNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :employees, :name, false
  end
end
