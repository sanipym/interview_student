class CreateVerifications < ActiveRecord::Migration[5.0]
  def change
    create_table :verifications do |t|
      t.string :teacher_name
      t.string :subject_name

      t.timestamps
    end
  end
end
