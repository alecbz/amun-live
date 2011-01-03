class CreateAttendees < ActiveRecord::Migration
  def self.up
    create_table :attendees do |t|
      t.string :fname
      t.string :lname
      t.references :committee
      t.references :school

      t.timestamps
    end
  end

  def self.down
    drop_table :attendees
  end
end
