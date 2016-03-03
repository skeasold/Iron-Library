class UploadPhotoToBook < ActiveRecord::Migration
  def change
    remove_column :books, :photo_url, :string
    add_column :books, :photo_id, :string
  end
end
