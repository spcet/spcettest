class CreateSubjectms < ActiveRecord::Migration
  def change
    create_table :subjectms do |t|
      t.string :name
      t.string :code
      t.string :staff
      t.integer :credit

      t.timestamps null: false
    end
  end
end
