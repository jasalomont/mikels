class CreateAgreements < ActiveRecord::Migration[5.1]
  def change
    create_table :agreements do |t|
      t.string :custnmbr
      t.string :timespan
      t.date :start
      t.date :end
      t.integer :amount_level1
      t.string :category
      t.float :pcnt_level1
      t.float :pcnt_level2
      t.float :pcnt_level3
      t.integer :amount_level2
      t.integer :amount_level3

      t.timestamps
    end
  end
end
