class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :description
      t.timestamp :start
      t.timestamp :end
      t.integer :dayId

      t.timestamps
    end
  end
end
