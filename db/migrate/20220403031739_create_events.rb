class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.datetime :date_time
      t.belongs_to :creator, foreign_key: { to_table: :users }, index: true
      t.timestamps
    end
  end
end
