class CreateSalsterrs < ActiveRecord::Migration[5.1]
  def change
    create_table :salsterrs do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
