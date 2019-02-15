class CreateRanks < ActiveRecord::Migration[5.1]
  def change
    create_table :ranks do |t|
      t.string :title
      t.integer :level
      t.text :description
      t.integer :department_id

      t.timestamps
    end
  end
end
