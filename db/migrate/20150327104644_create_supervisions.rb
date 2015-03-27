class CreateSupervisions < ActiveRecord::Migration
  def change
    create_table :supervisions do |t|
      t.datetime :start
      t.datetime :end
      t.integer :supervisor_id
      t.integer :classroom_id
      t.integer :exam_period_id

      t.timestamps null: false
    end
  end
end
