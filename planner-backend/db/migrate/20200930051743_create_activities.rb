class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :length
      t.string :location
      t.text :description
      t.integer :cost
      t.string :supplies
      t.belongs_to :trip, null: false, foreign_key: true
      t.belongs_to :timeslot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
