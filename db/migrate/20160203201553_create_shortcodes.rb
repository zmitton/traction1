class CreateShortcodes < ActiveRecord::Migration
  def change
    create_table :shortcodes do |t|
      t.string :destination_url

      t.timestamps null: false
    end
  end
end
