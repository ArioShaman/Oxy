class CreateArtTags < ActiveRecord::Migration
  def change
    create_table :art_tags, id: false do |t|
      t.belongs_to :articles, index: true#, foreign_key: true
      t.belongs_to :tags, index: true#, foreign_key: true
      t.timestamps null: false
    end
  end
end
