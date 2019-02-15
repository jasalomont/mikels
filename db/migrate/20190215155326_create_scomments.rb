class CreateScomments < ActiveRecord::Migration[5.1]
  def change
    create_table :scomments do |t|
      t.integer :user_id
      t.integer :solution_id
      t.text :message

      t.timestamps
    end
  end
end
