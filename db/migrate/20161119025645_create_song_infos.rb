class CreateSongInfos < ActiveRecord::Migration
  def change
    create_table :song_infos do |t|
      t.string :title
      t.string :artist

      t.timestamps null: false
    end
  end
end
