class AddAttachmentMapImageToEntries < ActiveRecord::Migration
  def self.up
    change_table :entries do |t|
      t.attachment :map_image
    end
  end

  def self.down
    remove_attachment :entries, :map_image
  end
end
