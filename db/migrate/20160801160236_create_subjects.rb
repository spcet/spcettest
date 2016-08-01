class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.references :subjectm, index: true, foreign_key: true
      t.string :name
      t.references :semester, index: true, foreign_key: true
      t.integer :credit

      t.timestamps null: false
    end
  end
end
