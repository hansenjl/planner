class CreateTimeslots < ActiveRecord::Migration[6.0]
  def change
    create_table :timeslots do |t|
      t.belongs_to :trip, null: false, foreign_key: true
      t.datetime :startdate
      t.datetime :enddate

      t.timestamps
    end
  end
end
