class AddNoteToHospital < ActiveRecord::Migration
  def self.up
    add_column :hospitals, :note, :text
  end

  def self.down
    remove_column :hospitals, :note
  end
end
