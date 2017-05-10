class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :type
      t.string :description
      t.string :status
      t.float :version
      t.integer :designer_id
      t.float :hours_used

      t.timestamps

    end
  end
end
