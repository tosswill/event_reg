class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.string :website
      t.date :cfp_start
      t.date :cfp_end
      t.date :ticket_sales_start
      t.date :ticket_sales_end
      t.date :event_start
      t.date :event_end
      t.decimal :cost

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
