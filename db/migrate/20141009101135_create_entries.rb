class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :day
      t.string :month
      t.string :year
      t.text :body

      t.timestamps
    end
  end
end
