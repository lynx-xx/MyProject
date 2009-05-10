class CreateFacilities < ActiveRecord::Migration
  def self.up
    create_table :facilities do |t|
      t.integer :hospital_id
      t.integer :facility_type_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :facilities
  end
end
