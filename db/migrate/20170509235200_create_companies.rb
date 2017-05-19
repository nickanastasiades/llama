class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.float :hours_available
      t.float :hours_used
      t.string :plan

      t.timestamps

    end
  end
end
