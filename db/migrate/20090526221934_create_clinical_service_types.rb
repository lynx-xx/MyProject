class CreateClinicalServiceTypes < ActiveRecord::Migration
  def self.up
    create_table :clinical_service_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :clinical_service_types
  end
end
