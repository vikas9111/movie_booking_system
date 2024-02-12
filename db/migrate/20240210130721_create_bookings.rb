class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :show, null: false, foreign_key: true
      t.text :seat_numbers, array: true, default: []
      t.date :show_date

      t.timestamps
    end
  end
end