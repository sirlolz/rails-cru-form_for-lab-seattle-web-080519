class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.references :artist, index: true, foreign: :true
      t.references :genre, index: true, foreign: :true
      t.timestamps
    end
  end
end