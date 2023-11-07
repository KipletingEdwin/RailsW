class CreateSpeakers < ActiveRecord::Migration[7.0]
  def change
    create_table :speakers do |t|
      t.string :Name
      t.string :Role
      t.string :Company
      t.string :Description
      t.string :Github
      t.string :LinkedIn
      t.string :Twitter
      t.string :Topic
      t.string :Time
      t.string :Date
      t.string :Venue
      t.string :Topic2
      t.string :Time2
      t.string :Date2
      t.string :Venue2

      t.timestamps
    end

    # Add an image attachment
    add_reference :speakers, :image, foreign_key: { to_table: :active_storage_blobs }
  end
end

