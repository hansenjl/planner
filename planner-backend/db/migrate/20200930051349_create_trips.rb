class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.datetime :startdate
      t.datetime :enddate

      t.timestamps
    end
  end
end
