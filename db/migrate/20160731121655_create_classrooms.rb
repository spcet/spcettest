class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name
      t.references :dept, index: true, foreign_key: true
      t.references :batch, index: true, foreign_key: true
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
