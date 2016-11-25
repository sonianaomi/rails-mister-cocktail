class ChangePictureToPhotoToCocktails < ActiveRecord::Migration[5.0]
  def change
    rename_column :cocktails, :picture, :photo
  end
end
