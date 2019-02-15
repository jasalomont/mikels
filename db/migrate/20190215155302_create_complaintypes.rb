class CreateComplaintypes < ActiveRecord::Migration[5.1]
  def change
    create_table :complaintypes do |t|
      t.string :title
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end
