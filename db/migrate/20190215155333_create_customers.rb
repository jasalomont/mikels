class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :custnmbr
      t.string :custname
      t.integer :customer_segment_id

      t.timestamps
    end
  end
end
