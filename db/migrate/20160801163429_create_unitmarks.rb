class CreateUnitmarks < ActiveRecord::Migration
  def change
    create_table :unitmarks do |t|
      t.references :student, index: true, foreign_key: true
      t.references :subject, index: true, foreign_key: true
      t.references :unit, index: true, foreign_key: true
      t.string :mark

      t.timestamps null: false
    end
  end
end
