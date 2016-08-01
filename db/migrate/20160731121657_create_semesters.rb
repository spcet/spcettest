class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :name
      t.references :classroom, index: true, foreign_key: true
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
