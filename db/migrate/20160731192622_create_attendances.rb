class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :semester, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.date :date
      t.string :subject
      t.boolean :attended

      t.timestamps null: false
    end
  end
end
