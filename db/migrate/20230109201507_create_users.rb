class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :profile_pic
      t.string :fav_book
      t.string :fav_genre

      t.timestamps
    end
  end
end
