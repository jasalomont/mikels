class CreateProductlines < ActiveRecord::Migration[5.1]
  def change
    create_table :productlines do |t|
      t.string :name
      t.string :description
      t.integer :subcategory_id

      t.timestamps
    end
  end
end
