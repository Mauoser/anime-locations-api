class ModifyLocationsTable < ActiveRecord::Migration[7.1]
  def change
    # Remove the 'hours' column
    remove_column :locations, :hours, :jsonb

    # Add the 'photo' column
    add_column :locations, :photo, :string
  end
end
