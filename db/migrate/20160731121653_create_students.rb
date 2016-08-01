class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :regno
      t.references :dept, index: true, foreign_key: true
      t.references :batch, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :hoa
      t.integer :sa
      t.string :hoal
      t.string :sal
      t.date :dob
      t.string :gender
      t.string :fathersname
      t.string :guardian
      t.string :community
      t.string :religionn
      t.integer :tenth
      t.integer :twelth
      t.string :fathersoccupiton
      t.string :identification
      t.string :blood
      t.boolean :dote
      t.string :mobile
      t.string :pmobile
      t.string :addr1
      t.string :addr2
      t.string :mark
      t.string :ten
      t.string :two

      t.timestamps null: false
    end
  end
end
