class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :age
      t.string :address

      t.timestamps
    end
  end
end
