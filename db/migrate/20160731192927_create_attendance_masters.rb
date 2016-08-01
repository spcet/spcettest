class CreateAttendanceMasters < ActiveRecord::Migration
  def change
    create_table :attendance_masters do |t|
      t.references :semester, index: true, foreign_key: true
      t.date :date
      t.boolean :today
      t.string :subject
      t.string :total

      t.timestamps null: false
    end
  end
end
