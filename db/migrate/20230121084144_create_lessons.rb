class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :capacity
      t.string :cuisine_genre
      t.integer :fee
      t.integer :lesson_length_minutes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
