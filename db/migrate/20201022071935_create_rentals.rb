class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.integer :day

      t.references :user
      t.references :book
      t.timestamps
    end
  end
end
