class AddIdToAttendee < ActiveRecord::Migration
  def self.up
    add_column :attendees, :event_id, :integer
  end

  def self.down
    remove_column :attendees, :event_id
  end
end
