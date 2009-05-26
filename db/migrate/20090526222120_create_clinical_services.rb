class CreateClinicalServices < ActiveRecord::Migration
  def self.up
    create_table :clinical_services do |t|
      t.integer :hospital_id
      t.integer :clinical_service_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :clinical_services
  end
end
