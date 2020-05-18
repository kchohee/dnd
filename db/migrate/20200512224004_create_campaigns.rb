class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :location
      t.text :story
      t.integer :lvl
      t.integer :owner_id

      t.timestamps
    end
  end
end
