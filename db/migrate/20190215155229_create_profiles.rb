class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :last_name
      t.string :nick_name
      t.string :phone
      t.string :mobile
      t.string :profile_pic
      t.integer :rank_id
      t.string :city_base
      t.text :address
      t.boolean :active
      t.string :slprsnid
      t.integer :salsterr_id
      t.date :start
      t.string :full_name

      t.timestamps
    end
  end
end
