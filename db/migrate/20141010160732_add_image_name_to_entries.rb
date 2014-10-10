class AddImageNameToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :image_name, :string
  end
end
