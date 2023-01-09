class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :book_id
      t.string :headline
      t.string :commentary
      t.string :rating
      t.integer :likes

      t.timestamps
    end
  end
end
