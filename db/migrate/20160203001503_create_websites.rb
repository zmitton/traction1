class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string  :url
      t.integer :rank
    end
  end
end
