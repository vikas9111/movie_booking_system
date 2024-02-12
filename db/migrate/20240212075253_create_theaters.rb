class CreateTheaters < ActiveRecord::Migration[7.1]
  def change
    create_table :theaters do |t|
      t.string :name
      t.string :location
      t.integer :capacity

      t.timestamps
    end
  end
end
