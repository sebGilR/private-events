class AddForeignKeyToEvents < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :event_attendings, :events, column: :attended_event_id
    add_foreign_key :event_attendings, :users, column: :event_attendee_id
    add_column :events, :creator_id, :integer, index: true
    add_foreign_key :events, :users, column: :creator_id
  end
end
