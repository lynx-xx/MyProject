class CreateVisitingHours < ActiveRecord::Migration
  def self.up
    create_table :visiting_hours do |t|
      t.integer :hospital_id
      t.string :days
      t.string :hours

      t.timestamps
    end
  end

  def self.down
    drop_table :visiting_hours
  end
end
