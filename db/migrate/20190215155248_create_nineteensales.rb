class CreateNineteensales < ActiveRecord::Migration[5.1]
  def change
    create_table :nineteensales do |t|
      t.string :custnmbr
      t.string :salsterr
      t.string :slprsnid
      t.string :gerente
      t.string :sopnumbe
      t.string :itemnmbr
      t.integer :vta
      t.integer :cantidad
      t.integer :cost
      t.integer :vta_ene
      t.integer :cantidad_ene
      t.integer :cost_ene
      t.integer :vta_feb
      t.integer :cantidad_feb
      t.integer :cost_feb
      t.integer :vta_mar
      t.integer :cantidad_mar
      t.integer :cost_mar
      t.integer :vta_abr
      t.integer :cantidad_abr
      t.integer :cost_abr
      t.integer :vta_may
      t.integer :cantidad_may
      t.integer :cost_may
      t.integer :vta_jun
      t.integer :cantidad_jun
      t.integer :cost_jun
      t.integer :vta_jul
      t.integer :cantidad_jul
      t.integer :cost_jul
      t.integer :vta_ago
      t.integer :cantidad_ago
      t.integer :cost_ago
      t.integer :vta_sep
      t.integer :cantidad_sep
      t.integer :cost_sep
      t.integer :vta_oct
      t.integer :cantidad_oct
      t.integer :cost_oct
      t.integer :vta_nov
      t.integer :cantidad_nov
      t.integer :cost_nov
      t.integer :vta_dic
      t.integer :cantidad_dic
      t.integer :cost_dic
      t.integer :dia

      t.timestamps
    end
  end
end
