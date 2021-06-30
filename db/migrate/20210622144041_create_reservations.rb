class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :start_date
      t.string :end_date
      t.integer :number_of_people
      t.integer :total_price

      t.timestamps
    end
  end
end
