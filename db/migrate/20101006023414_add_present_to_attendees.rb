class AddPresentToAttendees < ActiveRecord::Migration
  def self.up
    add_column :attendees, :present1, :boolean, :default => false
    add_column :attendees, :present2, :boolean, :default => false
    add_column :attendees, :present3, :boolean, :default => false
  end

  def self.down
    remove_column :attendees, :present3
    remove_column :attendees, :present2
    remove_column :attendees, :present1
  end
end
