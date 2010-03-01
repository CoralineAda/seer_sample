class CreateWidgetStats < ActiveRecord::Migration
  def self.up
    create_table :widget_stats do |t|
      t.integer :widget_id
      t.datetime :date
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :widget_stats
  end
end
