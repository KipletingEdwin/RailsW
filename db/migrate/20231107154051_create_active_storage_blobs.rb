class CreateActiveStorageBlobs < ActiveRecord::Migration[7.0]
  def change
    create_table :active_storage_blobs do |t|
      t.string :key
      t.string :filename
      t.string :content_type
      t.text :metadata
      t.bigint :byte_size, null: false
      t.string :checksum, null: false
      t.datetime :created_at, null: false
    end

    add_index :active_storage_blobs, :key, unique: true
  end
end
