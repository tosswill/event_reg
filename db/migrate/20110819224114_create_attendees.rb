class CreateAttendees < ActiveRecord::Migration
  def self.up
    create_table :attendees do |t|
      t.string :email
      t.boolean :is_speaker
      t.string :ticket_status
      t.string :approval_status
      t.string :shirt_size


      t.timestamps
    end
  end

  def self.down
    drop_table :attendees
  end
end
