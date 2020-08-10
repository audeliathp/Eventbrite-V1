class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :stardate
      t.integer :duration
      t.string :title
      t.text :description
      t.integer :price
      t.string :location
      t.references :organizer, index: true
      t.timestamps
    end
  end
end