class CreateHospitals < ActiveRecord::Migration
  def self.up
    create_table :hospitals do |t|
      t.string :full_name
      t.string :short_name
      t.string :phone
      t.string :fax
      t.text :address
      t.float :maps_latitude
      t.float :maps_longitude
      t.string :url
      t.string :email
      t.binary :image

      t.timestamps
    end
  end

  def self.down
    drop_table :hospitals
  end
end
