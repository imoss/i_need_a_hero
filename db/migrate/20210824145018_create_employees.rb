class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.boolean :is_hero
      t.boolean :frontend
      t.boolean :backend
      t.boolean :active

      t.timestamps
    end
  end
end
