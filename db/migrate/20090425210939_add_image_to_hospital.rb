class AddImageToHospital < ActiveRecord::Migration
  def self.up
    add_column :hospitals, :image, :string
  end

  def self.down
    remove_column :hospitals, :image
  end
end
