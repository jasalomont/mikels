class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.integer :year
      t.string :custnmbr
      t.string :salsterr
      t.string :gerente
      t.string :slprsnid
      t.string :sopnumbe
      t.integer :ene
      t.integer :feb
      t.integer :mar
      t.integer :abr
      t.integer :may
      t.integer :jun
      t.integer :jul
      t.integer :ago
      t.integer :oct
      t.integer :sep
      t.integer :nov
      t.integer :dic
      t.integer :total
      t.integer :agreement_id

      t.timestamps
    end
  end
end
