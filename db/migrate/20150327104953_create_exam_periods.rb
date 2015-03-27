class CreateExamPeriods < ActiveRecord::Migration
  def change
    create_table :exam_periods do |t|
      t.string :name
      t.datetime :start
      t.datetime :end

      t.timestamps null: false
    end
  end
end
