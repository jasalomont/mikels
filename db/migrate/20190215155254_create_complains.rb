class CreateComplains < ActiveRecord::Migration[5.1]
  def change
    create_table :complains do |t|
      t.integer :user_id
      t.integer :complaintype_id
      t.boolean :solved
      t.text :description
      t.integer :department_id
      t.string :itemnmbr
      t.string :sopnumbe
      t.integer :profile_id
      t.integer :rating
      t.string :status
      t.string :title

      t.timestamps
    end
  end
end
