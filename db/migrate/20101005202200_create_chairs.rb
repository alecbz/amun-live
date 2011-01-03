class CreateChairs < ActiveRecord::Migration
  def self.up
    create_table :chairs do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.references :committee

      t.timestamps
    end
  end

  def self.down
    drop_table :chairs
  end
end
