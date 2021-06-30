class ChangeDataDateToReservations < ActiveRecord::Migration[6.1]
  def change
    change_column :reservations, :start_date, :string
    change_column :reservations, :end_date, :string
  end
end
