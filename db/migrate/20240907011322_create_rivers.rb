class CreateRivers < ActiveRecord::Migration[7.2]
  def change
    create_table :rivers do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
