class CreateSolutions < ActiveRecord::Migration[5.1]
  def change
    create_table :solutions do |t|
      t.integer :complain_id
      t.text :message
      t.boolean :close
      t.integer :user_id
      t.boolean :like
      t.integer :scomment_id
      t.string :title

      t.timestamps
    end
  end
end
