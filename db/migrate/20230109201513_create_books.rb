class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :summary
      t.string :short
      t.string :page_count
      t.string :genre
      t.string :published
      t.integer :rating
      t.string :image_url

      t.timestamps
    end
  end
end
