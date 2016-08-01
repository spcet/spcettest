class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.references :semester, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
