class CreateEmotions < ActiveRecord::Migration
  def self.up
    create_table :emotions do |t|
      t.string :feeling
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :emotions
  end
end
