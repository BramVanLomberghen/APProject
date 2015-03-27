class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name
      t.integer :classroom_type_id

      t.timestamps null: false
    end
  end
end
