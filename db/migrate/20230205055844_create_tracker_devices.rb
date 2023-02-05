class CreateTrackerDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :tracker_devices do |t|
      t.string :color

      t.timestamps
    end
  end
end
