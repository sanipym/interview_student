class CreateMarklistes < ActiveRecord::Migration[5.0]
  def change
    create_table :marklistes do |t|
      t.string :student_name
      t.string :subject_name
      t.integer :mark

      t.timestamps
    end
  end
end
