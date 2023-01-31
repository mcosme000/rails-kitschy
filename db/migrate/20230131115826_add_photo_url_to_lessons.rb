class AddPhotoUrlToLessons < ActiveRecord::Migration[7.0]
  def change
    add_column :lessons, :main_photo, :string
  end
end
