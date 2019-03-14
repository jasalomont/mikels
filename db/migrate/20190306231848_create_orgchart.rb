class CreateOrgchart < ActiveRecord::Migration[5.1]
  def change
    create_table :orgcharts do |t|
      t.integer :department_id
      t.integer :salsterr_id
      t.string :slprsnid
      
      t.timestamps
    end
  end
end
