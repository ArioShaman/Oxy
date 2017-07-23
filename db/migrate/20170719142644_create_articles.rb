class CreateArticles < ActiveRecord::Migration


  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.text :content
      t.string :image
      t.belongs_to :category, required: true
      t.belongs_to :art_tags, index: true#, foreign_key: true
      t.timestamps null: false
    end
  end
end