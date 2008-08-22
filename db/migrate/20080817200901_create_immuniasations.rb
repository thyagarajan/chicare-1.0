class CreateImmuniasations < ActiveRecord::Migration
  def self.up
    create_table :immuniasations do |t|
      t.string :name_en
      t.string :name_ta
      t.string :days
      t.string :range

      t.timestamps
    end
  end

  def self.down
    drop_table :immuniasations
  end
end
