class CreateRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :regions do |t|
      t.string :state
      t.string :state_code
      t.integer :statenmbr
      t.integer :salsterr_id

      t.timestamps
    end
  end
end
