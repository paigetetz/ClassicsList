# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "Destroying database"
Book.destroy_all
User.destroy_all
Review.destroy_all
puts "Database Destroyed"

User.create(username:"paigetetz", password:"1234", 
profile_pic:"http://cdn.akc.org/content/article-body-image/siberian_husky_cute_puppies.jpg", fav_book: "The Book Theif", fav_genre: "Mystery")
User.create(username:"ohheycerimay", password:"1234", 
profile_pic:"https://i0.wp.com/bkreader.com/wp-content/uploads/2014/04/g-train.jpg?fit=500%2C380&ssl=1" fav_book: "Twlight", fav_genre: "YA")
User.create(username:"tobytown", password:"1234", 
profile_pic:"https://scontent-ord5-2.xx.fbcdn.net/v/t1.6435-9/69651319_10157171557082199_8810918459039809536_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=jO-M6xmJJyMAX9vara7&_nc_ht=scontent-ord5-2.xx&oh=00_AfAYNtFqoXjYtizXxCayHvpNFO-dssvCL6oTuuTC4FLDEg&oe=63E3FE9E"
fav_book: "Metamorphasis", fav_genre: "Thriller")

15 times do 
    User.create(
        username: Faker::Internet.user_name,
        password_digest: 1234,
        profile_pic: Faker::Avatar.image,
        fav_book: Faker::Book.title,
        fav_genre: Faker::Book.genre

    )
end

80 times do 
    Review.create(
        user_id: User.all.sample.id,
        book_id: Book.all.sample.id,
        headline: Faker::Quote.famous_last_words,
        commentary: Faker::Lorem.paragraph,
        rating: rand(1..5)
        likes: rand(1...30)

    )
end