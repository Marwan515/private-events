class CreateAttendees < ActiveRecord::Migration[7.0]
  def change
    create_table :attendees do |t|
      t.references :attended, null: false, foreign_key: { to_table: :users }, index: true
      t.references :attended_event, null: false, foreign_key: { to_table: :events }, index: true

      t.timestamps
    end
  end
end
