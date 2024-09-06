class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :title
      t.string :address
      t.string :picture
      t.string :photo
      t.string :criteria, array: true
      t.timestamps
    end
  end
end
