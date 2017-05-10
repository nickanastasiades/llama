class CreateDesigners < ActiveRecord::Migration[5.0]
  def change
    create_table :designers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :company_id
      t.string :role

      t.timestamps

    end
  end
end
