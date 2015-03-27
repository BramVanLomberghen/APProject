class CreateStudentExams < ActiveRecord::Migration
  def change
    create_table :student_exams do |t|
      t.integer :student_id
      t.integer :course_id
      t.integer :supervision_id
      t.datetime :start
      t.datetime :end
      t.boolean :present

      t.timestamps null: false
    end
  end
end
