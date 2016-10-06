class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :bloodgroup
      t.string :department

      t.timestamps null: false
    end
  end
end
