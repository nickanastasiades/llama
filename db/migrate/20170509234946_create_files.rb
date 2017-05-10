class CreateFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :files do |t|
      t.integer :project_id
      t.string :name
      t.string :description

      t.timestamps

    end
  end
end
